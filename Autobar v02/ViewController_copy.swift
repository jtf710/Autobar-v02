//
//  ViewController.swift
//  Autobar v02
//
//  Created by jfish on 5/23/15.
//  Copyright (c) 2015 Autobar. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var label1: UILabel!


    
    
    
    
    
    var label1Value = 0
    
    
    @IBAction func button1Press(sender: AnyObject) {
        
        // -- DangerousMan (first icon) Button Press --
    
        // Function: Changes Label1 from 0-65000 and back again
        
        // Future: Could set drink Quantity with label 1 value
        
   
        label1Value = label1Value + 1
        
        
        // displays the integer Label1Value into the label1 TExt
        label1.text = "\(label1Value)"

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

