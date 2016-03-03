//
//  ViewController.swift
//  YQNavigationControllerSwift
//
//  Created by 杨雯德 on 16/3/2.
//  Copyright © 2016年 杨雯德. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.redColor()
        
        
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: Selector("sss"))
        self.view.addGestureRecognizer(tap)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    func sss(){
        
        let firstVC = FirstViewController()
        self.navigationController?.pushViewController(firstVC, animated: true)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

