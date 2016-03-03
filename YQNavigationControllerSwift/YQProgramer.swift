//
//  YQProgramer.swift
//  YQNavigationControllerSwift
//
//  Created by 杨雯德 on 16/3/3.
//  Copyright © 2016年 杨雯德. All rights reserved.
//

import Foundation
import UIKit

func HexRGB(rgbValue:Int) ->UIColor{
    let r = CGFloat((rgbValue & 0xffffff) >> 16)/255.0
    let g = CGFloat((rgbValue & 0xFF00) >> 8)/255.0
    let b = CGFloat(rgbValue & 0xFF)/255.0
    return  UIColor(red: r, green: g, blue: b, alpha: 1)
}

func HexColor()  ->UIColor{
    let a:Double = Double(arc4random() % 255)
    let b:Double = Double(arc4random() % 255)
    let c:Double = Double(arc4random() % 255)
    
    return UIColor(red:CGFloat( a/Double(255.0)), green: CGFloat(b/Double(255.0)), blue: CGFloat(c/Double(255.0)), alpha: 1)
}