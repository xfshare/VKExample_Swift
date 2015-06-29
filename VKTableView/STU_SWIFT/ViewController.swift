//
//  ViewController.swift
//  STU_SWIFT
//
//  Created by mac on 6/29/15.
//  Copyright (c) 2015 VKan. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var myTableView:UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        buildTableView()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func buildTableView(){
        
        if myTableView == nil {
            
            myTableView = UITableView(frame: CGRectMake(0, 0, CGRectGetWidth(UIScreen.mainScreen().bounds), CGRectGetHeight(UIScreen.mainScreen().bounds)), style: .Plain)
            myTableView!.delegate = self
            myTableView!.dataSource = self
            self.view.addSubview(myTableView!);
        }
        
    }


    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 40
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIndenttifier:String = "CellIndenttifier";

        var cell=tableView.dequeueReusableCellWithIdentifier(cellIndenttifier) as? UITableViewCell
        if cell==nil {
            cell=UITableViewCell(style: .Default, reuseIdentifier: cellIndenttifier)
        }


        cell!.textLabel!.text = "\(indexPath.row)"
        return cell!
    }
    
}
