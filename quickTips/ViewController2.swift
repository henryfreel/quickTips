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
    @IBOutlet weak var tipControl: UISegmentedControl!

    var finalBillAmountArray = [String]()
    var tipPercentages = [0.18, 0.2, 0.22]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        /*---------\/--Variables--\/----------*/
        
        var tipPercentages = [0.18, 0.2, 0.22]
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var billDouble = NSString(string: finalBillAmountArray[0]).doubleValue
        
        var tip = billDouble * tipPercentage
        var total = billDouble + tip
        
        println(total)
        
        /*---------\/--Visuals-&-Text--\/---------*/
        
        navigationController.navigationBar.tintColor = UIColor(red:0.03, green:0.03, blue: 0.03, alpha: 1.0)
        
        navigationController.navigationBar.setBackgroundImage(UIImage(named: "transparentNavBar"), forBarMetrics: UIBarMetrics.Default)
        view.backgroundColor = UIColor(red:0.13, green:0.13, blue: 0.13, alpha: 1.0)
        
        billAmountLabel.text = "$\(finalBillAmountArray[0])"
        
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalWithTip.text = String(format: "$%.2f", total)
        
        peopleAmountLabel.text = "with 4 People it's"
        peopleAmountSlider.thumbTintColor = UIColor(red:0.13, green:1.0, blue: 0.13, alpha: 1.0)
        
        var numberOfPeople = 4.0
        var amountPerPersonVar = total / numberOfPeople
        amountPerPerson.text = String(format: "$%.2f", amountPerPersonVar)
        
        // Do any additional setup after loading the view.
    }
    
    /*-------\/--Actions--\/------------*/
    
    @IBAction func controlDidChnage(sender: AnyObject) {
        
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        var billDouble = NSString(string: finalBillAmountArray[0]).doubleValue
        
        var tip = billDouble * tipPercentage
        var newTotal = billDouble + tip
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalWithTip.text = String(format: "$%.2f", newTotal)
        
    }
    
    @IBAction func onSliderChanged(sender: AnyObject) {
        
        var billDouble = NSString(string: finalBillAmountArray[0]).doubleValue
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        var tip = billDouble * tipPercentage
        var newTotal = billDouble + tip
        //var billInteger = Int(billDouble)
        
        peopleAmountLabel.text = "4 People"
        var valueOfSlider = Double(peopleAmountSlider.value)
        peopleAmountLabel.text = String(format: "with %.0f People it's", valueOfSlider)
        
        
        var people = Int(valueOfSlider)

        var newAmount = newTotal / valueOfSlider
        println(newAmount)
        amountPerPerson.text = String(format: "$%.2f", newAmount)
        
    }
}
