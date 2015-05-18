//
//  PuzzleTwoViewController.swift
//  App
//
//  Created by Gaby McWilliams on 17/05/2015.
//  Copyright (c) 2015 Josh Hawes. All rights reserved.
//

import UIKit

class PuzzleTwoViewController: UIViewController {
    
    
    
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image5: UIImageView!
    @IBOutlet weak var image6: UIImageView!
    
    
    var selectedImageView = UIImageView?()
    var startPointOfImage = CGPoint?()
    var selectedImage = UIImage?()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        if let touch = touches.first as? UITouch {
            
            var point = touch.locationInView(self.view)
            
            if image4.frame.contains(point) {
                selectedImageView = image4
            }
            
            if image5.frame.contains(point) {
                selectedImageView = image5
            }
            
            if image6.frame.contains(point) {
                selectedImageView = image6
            }
            
            startPointOfImage = selectedImageView?.frame.origin
            self.view.bringSubviewToFront(selectedImageView!)
            
        }
    }
    
    override func touchesMoved(touches: Set<NSObject>, withEvent event: UIEvent) {
        if let touch = touches.first as? UITouch {
            var point = touch.locationInView(self.view)
            //println(point)
            
            if let selectedImage = selectedImageView {
                selectedImageView!.frame = CGRectMake(point.x - selectedImageView!.frame.width/2, point.y - selectedImageView!.frame.height/2, selectedImageView!.frame.width, selectedImageView!.frame.height)
            }
        }
    }
    
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        if let touch = touches.first as? UITouch {
            var point = touch.locationInView(self.view)
            
            if point.y < 200 {
                selectedImage = image4.image
                image4.image = selectedImageView?.image
            } else if point.y > 400 {
                selectedImage = image5.image
                image5.image = selectedImageView?.image
            } else {
                selectedImage = image6.image
                image6.image = selectedImageView?.image
            }
            
            selectedImageView?.image = selectedImage
            selectedImageView?.frame.origin = startPointOfImage!
            
            checkImages()
        }
    }
    
    func checkImages() {
        //Do all the checks here
        
    }
    
}
