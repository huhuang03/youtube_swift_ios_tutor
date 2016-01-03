//
//  GraphicView.swift
//  GraphicDemo
//
//  Created by 文凡胡 on 1/2/16.
//  Copyright © 2016 Th. All rights reserved.
//

import UIKit

class GraphicView: UIView {

    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        CGContextSetStrokeColorWithColor(context, UIColor.redColor().CGColor)
        CGContextSetLineWidth(context, 3)
        
        //draw line
//        CGContextMoveToPoint(context, 0, 0)
//        CGContextAddLineToPoint(context, 200, 200)
        
        // draw zhexian
//        CGContextMoveToPoint(context, 0, 0)
//        CGContextAddLineToPoint(context, 200, 200)
//        CGContextAddLineToPoint(context, 400, 500)
//        CGContextAddLineToPoint(context, 20, 20)
//        CGContextAddLineToPoint(context, 30, 30)
//        CGContextAddLineToPoint(context, 200, 200)
        
        //draw rect
        CGContextAddRect(context, CGRect(x: 10, y: 10, width: 100, height: 100))
        
        //fill
        CGContextSetFillColorWithColor(context, UIColor.greenColor().CGColor)
        
//        CGContextStrokePath(context)
//        CGContextFillPath(context)
        
        let avater = UIImage(named: "avatar")
        let logo = UIImage(named: "logo")
        
        
        logo?.drawInRect(UIScreen.mainScreen().bounds)
//        avater?.drawAtPoint(CGPoint(x: 100, y: 100))
    }

}
