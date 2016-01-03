//
//  ViewController.swift
//  DynamicDemo
//
//  Created by 文凡胡 on 1/2/16.
//  Copyright © 2016 Th. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var redView: UIView!
    var greeView: UIView!
    var dynamicAnimator: UIDynamicAnimator!

    override func viewDidLoad() {
        super.viewDidLoad()
        redView = UIView()
        redView.frame = CGRect(x: 50, y: 50, width: 60, height: 60)
        redView.backgroundColor = UIColor.redColor()
        self.view.addSubview(redView)
        
        greeView = UIView()
        greeView.frame = CGRect(x: 150, y: 50, width: 90, height: 90)
        greeView.backgroundColor = UIColor.greenColor()
        self.view.addSubview(greeView)
        
        dynamicAnimator = UIDynamicAnimator(referenceView: self.view)
        
        let behavior = UIGravityBehavior(items: [redView, greeView])
        behavior.gravityDirection = CGVector(dx: 0, dy: 1)
        
        dynamicAnimator.addBehavior(behavior)
        
        let boundries = UICollisionBehavior(items: [redView, greeView])
        boundries.translatesReferenceBoundsIntoBoundary = true
        
        dynamicAnimator.addBehavior(boundries)
        
        let bounce = UIDynamicItemBehavior(items: [redView, greeView])
        bounce.elasticity = 1
        dynamicAnimator.addBehavior(bounce)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

