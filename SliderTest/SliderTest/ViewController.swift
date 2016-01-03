//
//  ViewController.swift
//  SliderTest
//
//  Created by 文凡胡 on 1/2/16.
//  Copyright © 2016 Th. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var value: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func valueChange(sender: UISlider) {
        value.text = "\(lroundf(sender.value))"
    }

    @IBAction func segmengValueChange(sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            value.text = "First"
        } else {
            value.text = "Second"
        }
    }
    
}

