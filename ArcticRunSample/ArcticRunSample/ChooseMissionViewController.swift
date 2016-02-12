//
//  ChooseMissionViewController.swift
//  ArcticRunSample
//
//  Created by Ricky Chen on 2/11/16.
//  Copyright © 2016 Ricky Chen. All rights reserved.
//

import UIKit

class ChooseMissionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var segmentBar: UISegmentedControl!
    @IBOutlet weak var dataTable: UITableView!
    
    let seasonOne:[String] = ["Mission 1: Start","Mission 2: Endure","Mission 3: Survive"]
    let seasonTwo:[String] = ["Mission 1: Resource","Mission 2: Escape","Mission 3: Regroup"]
    let seasonThree:[String] = ["Mission 1: Run","Mission 2: Jump","Mission 3: Pull up"]
    let seasonFour:[String] = ["Mission 1: Hope","Mission 2: Return"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var returnValue = 0
        switch(segmentBar.selectedSegmentIndex){
        case 0:
            returnValue = seasonOne.count
            break
        case 1:
            returnValue = seasonTwo.count
            break
        case 2:
            returnValue = seasonThree.count
            break
        case 3:
            returnValue = seasonFour.count
            break
        default:
            break
        }
        
        return returnValue
    }
    
    
    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let myCell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath)
        
        switch(segmentBar.selectedSegmentIndex){
        case 0:
            myCell.textLabel?.text = seasonOne[indexPath.row]
            break
        case 1:
            myCell.textLabel?.text = seasonTwo[indexPath.row]
            break
        case 2:
            myCell.textLabel?.text = seasonThree[indexPath.row]
            break
        case 3:
            myCell.textLabel?.text = seasonFour[indexPath.row]
            break
        default:
            break
        }
        
        return myCell
    }
    
    @IBAction func segChange(sender: AnyObject) {
        dataTable.reloadData()
    }
   

}
