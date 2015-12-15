//
//  ViewController.swift
//  Tabber
//
//  Created by Daniel Mazour on 12/11/15.
//  Copyright (c) 2015 Daniel Mazour. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        //let stringValue = defaults.objectForKey("lowText") as! String
        let lowTip = defaults.doubleForKey("lowDouble")
        let mediumTip = defaults.doubleForKey("mediumDouble")
        let highTip = defaults.doubleForKey("highDouble")
        var tipPercentages = [lowTip, mediumTip, highTip]
    
//        tipControl.titleForSegmentAtIndex(0) = defaults.doubleForKey("lowDouble")
//        tipControl.titleForSegmentAtIndex(1) = defaults.doubleForKey("mediumDouble")
//        tipControl.titleForSegmentAtIndex(2) = defaults.doubleForKey("highDouble")
        
        //var tipPercentages = [0.15,0.2,0.25]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        var billAmount = (billField.text as NSString).doubleValue
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
//        tipLabel.text = String(format: "$%.2f", arguments: tip)
//        tipLabel.text = String(format: "$%.2f", arguments: total)
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

