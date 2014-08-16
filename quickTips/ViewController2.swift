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
        
        
        /*---------\/--Variables--\/----------*/
        
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
        
        /*---------\/--Visuals-&-Text--\/---------*/
        
        //navigationController.navigationBar.backIndicatorImage(UIImage(named: "back_button"))
        //(UIImage(named: "back_button"), forBarMetrics: UIBarMetrics.Default)
        
        navigationController.navigationBar.barTintColor = UIColor(red:0.54, green:0.58, blue: 0.6, alpha: 1.0)
        view.backgroundColor = UIColor(red:0.13, green:0.13, blue: 0.13, alpha: 1.0)
        
        billAmountLabel.text = "$\(finalBillAmountArray[0])"
        
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalWithTip.text = String(format: "$%.2f", total)
        
        peopleAmountLabel.text = "2"
        peopleAmountSlider.thumbTintColor = UIColor(red:0.13, green:1.0, blue: 0.13, alpha: 1.0)
        
        var numberOfPeople = 2.0
        var amountPerPersonVar = total / numberOfPeople
        amountPerPerson.text = String(format: "$%.2f", amountPerPersonVar)
        
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
