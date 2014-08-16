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
        
        navigationController.navigationBar.barTintColor = UIColor.whiteColor()
        //navigationController.navigationBar.backIndicatorImage(UIImage(named: "back_button"))
        
        //(UIImage(named: "back_button"), forBarMetrics: UIBarMetrics.Default)
        
        view.backgroundColor = UIColor(red:0.13, green:0.13, blue: 0.13, alpha: 1.0)
        
        var tipPercentage = 0.2
        
        //var billInteger = finalBillAmountArray[0].bridgeToObjectiveC().doubleValue
        var billInteger = NSString(string: finalBillAmountArray[0]).doubleValue
        
        var tip = billInteger * tipPercentage
        var total = billInteger + tip
        
        //var valueOfSlider = peopleAmountSlider.value.bridgeToObjectiveC().doubleValue
        //-var valueOfSlider = peopleAmountSlider.value.doubleValue
        
        //-var totalPerPerson = total / valueOfSlider
        println(total)
        //-println(valueOfSlider)
        //-println(totalPerPerson)
        
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalWithTip.text = String(format: "$%.2f", total)
        
        billAmountLabel.text = "\(finalBillAmountArray[0])"
        peopleAmountLabel.text = "2"
        
        //-amountPerPerson.text = String(format: "$%.2f", totalPerPerson)
        
        // Do any additional setup after loading the view.
    }
    
    /*@IBAction func sliderDidChange(sender: AnyObject) {
        
        var valueOfSlider = peopleAmountSlider.value.bridgeToObjectiveC().doubleValue
        
        peopleAmountLabel.text = String(format: "%.0f", valueOfSlider)
        
        var billInteger = finalBillAmountArray[0].bridgeToObjectiveC().doubleValue
        var tipPercentage = 0.2
        var tip = billInteger * tipPercentage
        var total = billInteger + tip
        var totalPerPerson = total / valueOfSlider

        amountPerPerson.text = String(format: "$%.2f", totalPerPerson)
        
    }*/

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
