//
//  SettingsViewController.swift
//  Tabber
//
//  Created by Daniel Mazour on 12/11/15.
//  Copyright (c) 2015 Daniel Mazour. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var lowTipField: UITextField!
    
    @IBOutlet weak var mediumTipField: UITextField!
    
    @IBOutlet weak var highTipField: UITextField!
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
//        defaults.setObject(lowTipField.text, forKey: "lowText")
//        defaults.setObject(mediumTipField.text, forKey: "mediumText")
//        defaults.setObject(highTipField.text, forKey: "highText")
        
        defaults.setDouble((lowTipField.text as NSString).doubleValue, forKey: "lowDouble")
        defaults.setDouble((mediumTipField.text as NSString).doubleValue, forKey: "mediumDouble")
        defaults.setDouble((highTipField.text as NSString).doubleValue, forKey: "highDouble")
        defaults.synchronize()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
