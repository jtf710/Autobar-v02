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
    
        // Function: Changes Label1 from 0-6 and back again
        
        // Alternatively: Could make Label1 invisible and set Button's UILabel (Item Count 0) to Label1s value
        
        // Future: Could use   .toInt() to convert string to number for setting Drink.Quantity Value with each button press. Or could set drink.Quatity then int to string set.
        
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

