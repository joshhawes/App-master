//
//  QuizTwoViewController.swift
//  App
//
//  Created by Josh Hawes on 14/05/2015.
//  Copyright (c) 2015 Josh Hawes. All rights reserved.
//

import UIKit

class QuizTwoViewController: UIViewController {
    
    override func viewDidLoad() {
        
    }
    
    @IBAction func buttonFirst(sender: AnyObject) {
        let alertController = UIAlertController(title: "Answer", message:
            "Incorrect", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Try Again", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
        
    }
    
    @IBAction func buttonSecond(sender: AnyObject) {
        let alertController = UIAlertController(title: "Answer", message:
            "Correct", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Well Done", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }

    
    @IBAction func buttonThird(sender: AnyObject) {
        let alertController = UIAlertController(title: "Answer", message:
            "Incorrect", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Try Again", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    
    
    @IBAction func buttonFourth(sender: AnyObject) {
        let alertController = UIAlertController(title: "Answer", message:
            "Incorrect", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "Try Again", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }
    


    
    

    
}