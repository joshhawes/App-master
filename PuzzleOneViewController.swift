//
//  PuzzleOneViewController.swift
//  App
//
//  Created by Gaby McWilliams on 17/05/2015.
//  Copyright (c) 2015 Josh Hawes. All rights reserved.
//

import UIKit

class PuzzleOneViewController: UIViewController {

    
    
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    
    var selectedImageView = UIImageView?()
    var startPointOfImage = CGPoint?()
    var selectedImage = UIImage?()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        if let touch = touches.first as? UITouch {
            
            var point = touch.locationInView(self.view)
            
            if image1.frame.contains(point) {
                selectedImageView = image1
            }
            
            if image2.frame.contains(point) {
                selectedImageView = image2
            }
            
            if image3.frame.contains(point) {
                selectedImageView = image3
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
                selectedImage = image1.image
                image1.image = selectedImageView?.image
            } else if point.y > 400 {
                selectedImage = image3.image
                image3.image = selectedImageView?.image
            } else {
                selectedImage = image2.image
                image2.image = selectedImageView?.image
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

    
    

