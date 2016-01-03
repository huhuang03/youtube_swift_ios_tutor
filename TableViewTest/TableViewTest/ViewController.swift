//
//  ViewController.swift
//  TableViewTest
//
//  Created by 文凡胡 on 1/2/16.
//  Copyright © 2016 Th. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let people = [
        ("Bucky Roberts", "New York"),
        ("Lisa Tucker", "Alabama"),
        ("Emma Hotpocket", "Texas")
    ]
    
    let videos = [
        ("Android App Development", "74 videos"),
        ("C++ for Beginners", "87 videos"),
        ("Java", "142 videos"),
        ("Python Programming", "63 videos"),
        ("Web Design", "68 videos")
    ]
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if 0 == section {
            return people.count
        } else {
            return videos.count
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var rstname = ""
        if indexPath.section == 0 {
            let (name, city) = people[indexPath.row]
            rstname = name
        } else {
            let (videonName, _) = videos[indexPath.row]
            rstname = videonName
        }
        cell.textLabel?.text = rstname
        return cell
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if 0 == section {
            return "Peoples"
        } else {
            return "Videos"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

