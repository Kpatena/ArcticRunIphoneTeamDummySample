//
//  ViewController.swift
//  ArcticRunSample
//
//  Created by Matt Wiseman on 2016-02-09.
//  Copyright © 2016 Ricky Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Open: UIBarButtonItem!
   
    
    var varView = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Open.target = self.revealViewController()
        Open.action = Selector("revealToggle:")
        
        self.view.addGestureRecognizer((self.revealViewController().panGestureRecognizer()))
        
      
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}