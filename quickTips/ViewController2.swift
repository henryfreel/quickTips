//
//  ViewController2.swift
//  quickTips
//
//  Created by Henry Freel on 8/13/14.
//  Copyright (c) 2014 Henry Freel. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var billAmountLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var totalWithTip: UILabel!
    @IBOutlet weak var peopleAmountLabel: UILabel!
    @IBOutlet weak var peopleAmountSlider: UISlider!
    @IBOutlet weak var amountPerPerson: UILabel!
    
    var finalBillAmountArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        println(finalBillAmountArray)
        
        var tipPercentage = 0.2
        var billInteger = Int(finalBillAmountArray[0].bridgeToObjectiveC().intValue)
        println(billInteger)
        //var tip = billInteger * tipPercentage
        
        billAmountLabel.text = "\(finalBillAmountArray[0])"
        peopleAmountLabel.text = "2"
        //tipLabel.text = "\(tipPercentage)"
        //totalWithTipLabel.text = "\(finalBillAmountArray) * \(tipPercentage)"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderDidChange(sender: AnyObject) {
        
        var valueOfSlider = peopleAmountSlider.value
        peopleAmountLabel.text = String(format: "%.0f", valueOfSlider)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
