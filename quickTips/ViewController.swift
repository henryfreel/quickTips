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
    
    var finalBillAmount = [String]()
                            
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        var finalBillAmount = [String]()
        
        billField.becomeFirstResponder()
        submitButton.hidden = true
        
        //finalBillAmount.removeAll(keepCapacity: false)
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var billAmount = billField.text//.bridgeToObjectiveC().doubleValue
        //println(billAmount)
        
        finalBillAmount = [billAmount]
        //println(finalBillAmount)
        
        if finalBillAmount.isEmpty {
            
            submitButton.hidden = true
        } else {
            
            submitButton.hidden = false
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        
        let destinationViewController = segue.destinationViewController as ViewController2
        destinationViewController.finalBillAmountArray = finalBillAmount
    }

}

