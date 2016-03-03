//
//  FourViewController.swift
//  YQNavigationControllerSwift
//
//  Created by 杨雯德 on 16/3/3.
//  Copyright © 2016年 杨雯德. All rights reserved.
//

import UIKit

class FourViewController: UIViewController,navitionParaer {

    override func viewDidLoad() {
        super.viewDidLoad()
        let a:Double = Double(arc4random() % 255)
        let b:Double = Double(arc4random() % 255)
        let c:Double = Double(arc4random() % 255)
        
        setBarTintColor(UIColor(red:CGFloat( a/Double(255.0)), green: CGFloat(b/Double(255.0)), blue: CGFloat(c/Double(255.0)), alpha: 1))
        
        
        
        self.view.backgroundColor =  HexColor()
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "next", style: UIBarButtonItemStyle.Plain, target: self, action: Selector("nexts"))
        
        
        // Do any additional setup after loading the view.
    }
    
    
    func nexts(){
        let ss = FiveViewController()
        self.navigationController?.pushViewController(ss, animated: true)
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
