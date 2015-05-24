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
    
  
    
    @IBOutlet weak var buttonScroll: UIScrollView!

    
    
    
    
    
    
    
    
    @IBAction func button1Press(sender: AnyObject) {
        
        // -- DM Button Press --
    
        // Function: Changes Label1 from 0-6 and back again
        
        // Alternatively: Could make Label1 invisible and set Button's UILabel (Item Count 0) to Label1s value
        
        // Future: Could use   .toInt() to convert string to number for setting Drink.Quantity Value with each button press. Or could set drink.Quatity then int to string set.
        
        if label1.text == "0" {
            label1.text = "1" }
        else if label1.text == "1" {
            label1.text = "2"
        }
        else if label1.text == "2" {
            label1.text = "3"
        }

        else if label1.text == "3" {
            label1.text = "4"
        }

        else if label1.text == "4" {
            label1.text = "5"
        }

        else if label1.text == "5" {
            label1.text = "6"
        }
        else if label1.text == "6" {
            label1.text = "0"
        }

    }

    
    
    
    func colorButtonsView(buttonSize:CGSize, buttonCount:Int) -> UIView {
        //creates color buttons in a UIView
        let buttonView = UIView()
        buttonView.backgroundColor = UIColor.blackColor()
        buttonView.frame.origin = CGPointMake(0,0)
        
        let padding = CGSizeMake(10, 10)
        buttonView.frame.size.width = (buttonSize.width + padding.width) * CGFloat(buttonCount)
        buttonView.frame.size.height = (buttonSize.height +  2.0 * padding.height)

        //add buttons to the view
        var buttonPosition = CGPointMake(padding.width * 0.5, padding.height)
        let buttonIncrement = buttonSize.width + padding.width
        let hueIncrement = 1.0 / CGFloat(buttonCount)
        var newHue = hueIncrement
        
        for i in 0...(buttonCount - 1)  {
            var button = UIButton.buttonWithType(.Custom) as UIButton
            button.frame.size = buttonSize
            button.frame.origin = buttonPosition
            buttonPosition.x = buttonPosition.x + buttonIncrement
            button.backgroundColor = UIColor(hue: newHue, saturation: 1.0, brightness: 1.0, alpha: 1.0)
            newHue = newHue + hueIncrement
            button.addTarget(self, action: "colorButtonPressed:", forControlEvents: .TouchUpInside)
            buttonView.addSubview(button)
        }
        
        func colorButtonPressed(sender:UIButton){
            buttonScroll.backgroundColor = sender.backgroundColor
        }
        
        
        return buttonView
    }
    
    
    
    
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //scrolling pageview
        let scrollingView = colorButtonsView(CGSizeMake(100.0,50.0), buttonCount: 10)
        buttonScroll.contentSize = scrollingView.frame.size
        buttonScroll.addSubview(scrollingView)
        buttonScroll.showsHorizontalScrollIndicator = true
        buttonScroll.indicatorStyle = .Default
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

