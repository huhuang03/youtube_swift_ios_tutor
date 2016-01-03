//
//  ViewController.swift
//  AnimDemo
//
//  Created by 文凡胡 on 1/2/16.
//  Copyright © 2016 Th. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIView.animateWithDuration(3) {
            self.text.alpha = 0.3
            let t1 = CGAffineTransformMakeScale(3, 3)
            let t2 = CGAffineTransformMakeRotation(90)
            
            self.text.transform = CGAffineTransformConcat(t1, t2)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

