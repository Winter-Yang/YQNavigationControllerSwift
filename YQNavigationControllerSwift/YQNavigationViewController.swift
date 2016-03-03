//
//  YQBaseViewController.swift
//  YQNavigationControllerSwift
//
//  Created by 杨雯德 on 16/3/3.
//  Copyright © 2016年 杨雯德. All rights reserved.
//

import UIKit


struct NabigationBar {
     // BarBackgroundImage
     var leftBarButtonItemImage:UIImage = UIImage(named: "navibar_back")!
     // TintColor
     var BarTintColor:UIColor = UIColor.whiteColor()
     // BackgroundImage
     var BarBackImage:UIImage?
     // rightBarButtonItemImage
     var rightBarButtonItemImage:UIImage?
     // rightBarButtonItemTarget
     var rightBarButtonItemTarget:AnyObject?
     // rightBarButtonItemAction
     var rightBarButtonItemAction:Selector?
}

private var navigationBarObject:NabigationBar = NabigationBar()

// Modify the properties only need to implement the protocol 
protocol navitionParaer{
    func setBarTintColor(color:UIColor)
    func leftBarButtonItemImage(image:UIImage)
    func setBarBackImage(image:UIImage)
}

extension navitionParaer {
    func setBarTintColor(color:UIColor){
         navigationBarObject.BarTintColor = color
    }
    
    func setBarBackImage(image:UIImage){
         navigationBarObject.BarBackImage = image
    }
    func leftBarButtonItemImage(image:UIImage){
        navigationBarObject.leftBarButtonItemImage = image
    }

}

class YQWrapNavigationController:UINavigationController{

    override func pushViewController(viewController: UIViewController, animated: Bool) {
        
        let backButtonImage:UIImage = navigationBarObject.leftBarButtonItemImage
        viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(image: backButtonImage, style: UIBarButtonItemStyle.Plain, target: self, action: Selector("didTapBackButton"))
        
        self.navigationController!.pushViewController(YQWrapViewController.wrapViewControllerWithViewController(viewController), animated: animated)
    }
    func didTapBackButton()->Void{
        self.navigationController!.popViewControllerAnimated(true)
    }
}

class YQWrapViewController:UIViewController{
    class func wrapViewControllerWithViewController(viewcontroller:UIViewController) -> YQWrapViewController{
        let wrapNavController:YQWrapNavigationController = YQWrapNavigationController()
        let wrapViewController:YQWrapViewController = YQWrapViewController()
        wrapViewController.view.backgroundColor = UIColor.whiteColor()
        wrapViewController.view.addSubview(wrapNavController.view)
        wrapViewController.addChildViewController(wrapNavController)
        wrapNavController.viewControllers = [viewcontroller]
        
        
        //Config
        viewcontroller.navigationItem.titleView = wrapViewController.setUpTitle("hello")
        wrapNavController.navigationBar.barTintColor = navigationBarObject.BarTintColor
        if wrapNavController.navigationBar.respondsToSelector(Selector("shadowImage")) == true && navigationBarObject.BarBackImage != nil{
            wrapNavController.navigationBar.setBackgroundImage(navigationBarObject.BarBackImage, forBarMetrics: UIBarMetrics.Default)
        }


        return wrapViewController
    }
    
    func setUpTitle(title:String) -> UILabel{
        let titleLabel = UILabel()
        titleLabel.frame = CGRectZero
        titleLabel.textAlignment = NSTextAlignment.Center
        titleLabel.textColor = UIColor.blackColor()
        titleLabel.text = title
        titleLabel.backgroundColor = UIColor.clearColor()
        titleLabel.sizeToFit()
        
        var frame:CGRect = titleLabel.frame
        frame.size.width = frame.size.width + 50
        frame.size.height = frame.size.height + 10
        titleLabel.frame = frame
        
        return titleLabel
    }

}

class YQNavigationViewController: YQBaseNavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBarHidden = true
    }

    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        self.viewControllers = [YQWrapViewController.wrapViewControllerWithViewController(rootViewController)]
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
