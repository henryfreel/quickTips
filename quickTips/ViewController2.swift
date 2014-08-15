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
        var billInteger = finalBillAmountArray[0].bridgeToObjectiveC().doubleValue
        
        var tip = billInteger * tipPercentage
        var total = billInteger + tip
        
        var valueOfSlider = peopleAmountSlider.value.bridgeToObjectiveC().doubleValue
        var totalPerPerson = total / valueOfSlider
        println(total)
        println(valueOfSlider)
        println(totalPerPerson)
        
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalWithTip.text = String(format: "$%.2f", total)
        
        billAmountLabel.text = "\(finalBillAmountArray[0])"
        peopleAmountLabel.text = "2"
        
        amountPerPerson.text = String(format: "$%.2f", totalPerPerson)
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderDidChange(sender: AnyObject) {
        
        var valueOfSlider = peopleAmountSlider.value.bridgeToObjectiveC().doubleValue
        peopleAmountLabel.text = String(format: "%.0f", valueOfSlider)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
