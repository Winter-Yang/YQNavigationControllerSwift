//
//  YQBaseNavigationController.swift
//  YQNavigationControllerSwift
//
//  Created by 杨雯德 on 16/3/2.
//  Copyright © 2016年 杨雯德. All rights reserved.
//

import UIKit





class YQBaseNavigationController: UINavigationController,UINavigationControllerDelegate,UIGestureRecognizerDelegate {

    private var popGesture:UIPanGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBarHidden = true
        self.delegate = self
        addPopGesture()
    }
    

    override init(rootViewController: UIViewController) {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    func addPopGesture(){
        let target:AnyObject? = self.interactivePopGestureRecognizer?.delegate
        let action:Selector = NSSelectorFromString("handleNavigationTransition:")
        
        self.popGesture = UIPanGestureRecognizer(target: target, action: action)
        self.view.addGestureRecognizer(self.popGesture)
        self.interactivePopGestureRecognizer?.enabled = false
    }
    
    override func pushViewController(viewController: UIViewController, animated: Bool) {
        if self.viewControllers.count > 0{
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: true)
    }
    
    func navigationController(navigationController: UINavigationController, didShowViewController viewController: UIViewController, animated: Bool) {
        
        let isRootVC = viewController == navigationController.viewControllers.first
        let target:AnyObject = (self.interactivePopGestureRecognizer?.delegate)!
        let action:Selector = NSSelectorFromString("handleNavigationTransition:")
        
        if isRootVC{
            self.popGesture.removeTarget(target, action: action)
        }else{
            self.popGesture.addTarget(target, action: action)
        }
        self.interactivePopGestureRecognizer?.enabled = !isRootVC
    }
    
    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
    
    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailByGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return gestureRecognizer.isKindOfClass(UIScreenEdgePanGestureRecognizer)
    }
    
}


extension YQBaseNavigationController{
    
}






