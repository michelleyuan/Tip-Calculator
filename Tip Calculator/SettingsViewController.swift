//
//  SettingsViewController.swift
//  Tip Calculator
//
//  Created by Michelle Yuan on 12/24/15.
//  Copyright © 2015 michelleyuan. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

     @IBOutlet weak var defaultTipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = NSUserDefaults.standardUserDefaults()
        self.defaultTipControl.selectedSegmentIndex = defaults.integerForKey("default_tip_segment")

        // Do any additional setup after loading the view.
    }

    @IBAction func defaultTipChange(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(defaultTipControl.selectedSegmentIndex, forKey: "default_tip_segment")
        defaults.synchronize()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
