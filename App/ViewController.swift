//
//  ViewController.swift
//  App
//
//  Created by Josh Hawes on 14/05/2015.
//  Copyright (c) 2015 Josh Hawes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonX(sender: AnyObject) {
        let alertController = UIAlertController(title: "Good Job", message:
            "Well Done, You Made It ", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Back", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)

    }

}

