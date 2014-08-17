//
//  ViewController.swift
//  quickTips
//
//  Created by Henry Freel on 8/13/14.
//  Copyright (c) 2014 Henry Freel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var backgroundView: UIView!
    
    var finalBillAmount = [String]()
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
                            
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        navigationController.navigationBar.setBackgroundImage(UIImage(named: "transparentNavBar"), forBarMetrics: UIBarMetrics.Default)
        
       view.backgroundColor = UIColor(red:0.13, green:0.13, blue: 0.13, alpha: 1.0)
        
        submitButton.layer.cornerRadius = 4.0
        billField.layer.cornerRadius = 4.0
        billField.backgroundColor = UIColor(red:0.07, green:0.07, blue: 0.07, alpha: 1.0)
        
        backgroundView.layer.cornerRadius = 4.0
        backgroundView.backgroundColor = UIColor(red:0.07, green:0.07, blue: 0.07, alpha: 1.0)
        
        billField.becomeFirstResponder()
        //submitButton.hidden = true
        self.submitButton.alpha = 0.0
        
        var finalBillAmount = [String]()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var billAmount = billField.text//.bridgeToObjectiveC().doubleValue
        //println(billAmount)
        
        finalBillAmount = [billAmount]
        //println(finalBillAmount)
        
        if finalBillAmount.isEmpty {
            
            //submitButton.hidden = true
            self.submitButton.alpha = 0.0
        } else {
            
            //submitButton.transform = CGAffineTransformMakeTranslation(0, -50)
            submitButton.hidden = false
            
        
            UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.8, options: nil, animations: {
                
                self.submitButton.transform = CGAffineTransformMakeTranslation(0, -50)
                self.submitButton.alpha = 1.0
                
            }, nil)
            
        }
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        
        let destinationViewController = segue.destinationViewController as ViewController2
        destinationViewController.finalBillAmountArray = finalBillAmount
    }

}

