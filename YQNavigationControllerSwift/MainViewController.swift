//
//  MainViewController.swift
//  YQNavigationControllerSwift
//
//  Created by 杨雯德 on 16/3/3.
//  Copyright © 2016年 杨雯德. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let first = FirstViewController()
        let firstNA = YQNavigationViewController(rootViewController: first)
        firstNA.tabBarItem.title = "测试1"
        
        
        let two = TwoViewController()
        let twoNA = YQNavigationViewController(rootViewController: two)
        twoNA.tabBarItem.title = "测试1"
        
        self.viewControllers = [firstNA,twoNA]

        
        
        // Do any additional setup after loading the view.
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
