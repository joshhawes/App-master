//
//  PuzzleThreeViewController.swift
//  App
//
//  Created by Gaby McWilliams on 17/05/2015.
//  Copyright (c) 2015 Josh Hawes. All rights reserved.
//


import UIKit

class PuzzleThreeViewController: UIViewController {
    
    
    
 
    @IBOutlet weak var image7: UIImageView!
    @IBOutlet weak var image8: UIImageView!
    @IBOutlet weak var image9: UIImageView!
    
    var selectedImageView = UIImageView?()
    var startPointOfImage = CGPoint?()
    var selectedImage = UIImage?()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        if let touch = touches.first as? UITouch {
            
            var point = touch.locationInView(self.view)
            
            if image7.frame.contains(point) {
                selectedImageView = image7
            }
            
            if image8.frame.contains(point) {
                selectedImageView = image8
            }
            
            if image9.frame.contains(point) {
                selectedImageView = image9
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
                selectedImage = image7.image
                image7.image = selectedImageView?.image
            } else if point.y > 400 {
                selectedImage = image8.image
                image8.image = selectedImageView?.image
            } else {
                selectedImage = image9.image
                image9.image = selectedImageView?.image
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

