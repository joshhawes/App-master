//
//  QuizOneViewController.swift
//  App
//
//  Created by Josh Hawes on 14/05/2015.
//  Copyright (c) 2015 Josh Hawes. All rights reserved.
//

import UIKit

class QuizOneViewController: UIViewController {
    
    override func viewDidLoad() {
        
    }
    
    
    @IBAction func buttonTest(sender: AnyObject) {
        let alertController = UIAlertController(title: "Answer", message:
            "Incorrect", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Try Again", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    
    @IBAction func buttonTwo(sender: AnyObject) {
        let alertController = UIAlertController(title: "Answer", message:
            "Incorrect", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Try Again", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    @IBAction func buttonThree(sender: AnyObject) {
        let alertController = UIAlertController(title: "Answer", message:
            "Correct", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Well Done", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
        
    }
    
    
    @IBAction func buttonFour(sender: AnyObject) {
        let alertController = UIAlertController(title: "Answer", message:
            "Incorrect", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Try Again", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
        
    }
    
}
    



