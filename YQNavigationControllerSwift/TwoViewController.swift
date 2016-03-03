//
//  TwoViewController.swift
//  YQNavigationControllerSwift
//
//  Created by 杨雯德 on 16/3/3.
//  Copyright © 2016年 杨雯德. All rights reserved.
//

import UIKit

class TwoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = HexColor()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "next", style: UIBarButtonItemStyle.Plain, target: self, action: Selector("nexts"))
        
        // Do any additional setup after loading the view.
    }

    
    func nexts(){
        let ss = ThreeViewController()
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
