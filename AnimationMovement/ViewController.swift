//
//  ViewController.swift
//  AnimationMovement
//
//  Created by Apple MacBook Pro  on 3/9/20.
//  Copyright © 2020 Apple MacBook Pro . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Black1: UIView!
    @IBOutlet weak var Black2: UIView!
    @IBOutlet weak var Black3: UIView!
    @IBOutlet weak var Black4: UIView!
    @IBOutlet weak var Orange: UIView!
    @IBOutlet weak var Purple: UIView!
    @IBOutlet weak var Red: UIView!
    @IBOutlet weak var Green: UIView!
    @IBOutlet weak var Teal: UIView!
     
        func moveRight(view: UIView) {
            view.center.x += 300
        }
        
        func moveLeft(view: UIView) {
            view.center.x -= 300
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func AnimationBlack(_ sender: Any) {
        let duration: Double = 2.0
                UIView.animate(withDuration: duration) {
                    self.moveRight(view: self.Black1)
                }
                
                UIView.animate(withDuration: duration, animations: {
                    self.moveRight(view: self.Black2)
                }) { (finished) in
                    if finished {
                        UIView.animate(withDuration: duration, animations: {
                            self.moveLeft(view: self.Black2)
                        })
                    }
                }
                
                let delay: Double = 1.0
                UIView.animate(withDuration: duration, delay: delay, options: .curveLinear, animations: {
                    self.moveRight(view: self.Black3)
                }) { (_) in
                    self.moveLeft(view: self.Black3)
                }
                
                UIView.animate(withDuration: duration, delay: delay, usingSpringWithDamping: 0.5, initialSpringVelocity: 2, options: .curveLinear, animations: {
                    self.moveRight(view: self.Black4)
                }) { (_) in
        //            self.moveLeft(view: self.black4)
                }
            }
    @IBAction func AnimationColour(_ sender: Any) {
           
            let duration = 2.0
                   UIView.animate(withDuration: duration, delay: 0, options: .curveLinear, animations: {
                       self.moveRight(view: self.Orange)
                   }) { (_) in
                       self.moveLeft(view: self.Orange)
           }
                   
                   UIView.animate(withDuration: duration, delay: 0, options: .curveEaseIn, animations: {
                       self.moveRight(view: self.Purple)
                   }) { (_) in
                       self.moveLeft(view: self.Purple)
                   }
                   
                   UIView.animate(withDuration: duration, delay: 0, options: .curveEaseOut, animations: {
                       self.moveRight(view: self.Red)
                   }) { (_) in
                       self.moveLeft(view: self.Red)
                   }
                   
                   UIView.animate(withDuration: duration, delay: 0, options: .autoreverse, animations: {
                       self.moveRight(view: self.Green)
                   }) { (_) in
                       self.moveLeft(view: self.Green)
                   }
                   
                   UIView.animate(withDuration: duration, delay: 0, options: [.repeat, .autoreverse, .curveEaseIn] , animations: {
                       self.moveRight(view: self.Teal)
                   }) { (_) in
                      //self.moveLeft(view: self.Teal)
                   }
               }

            
    }
    
   
