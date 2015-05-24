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
        
        // -- DM Button Press --
    
        // Function: Changes Label1 from 0-65,000
        
        // Future: Set Cart.Drink Quantity Value to label1Value with each button press.
        
    label1Value = label1Value + 1
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

