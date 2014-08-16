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
        
        var billInteger = NSString(string: finalBillAmountArray[0]).doubleValue
        
        var tip = billInteger * tipPercentage
        var total = billInteger + tip
        
        println(total)
        
        /*---------\/--Visuals-&-Text--\/---------*/
        
        navigationController.navigationBar.setBackgroundImage(UIImage(named: "transparentNavBar"), forBarMetrics: UIBarMetrics.Default)
        view.backgroundColor = UIColor(red:0.13, green:0.13, blue: 0.13, alpha: 1.0)
        
        billAmountLabel.text = "$\(finalBillAmountArray[0])"
        
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalWithTip.text = String(format: "$%.2f", total)
        
        peopleAmountLabel.text = "4 People"
        peopleAmountSlider.thumbTintColor = UIColor(red:0.13, green:1.0, blue: 0.13, alpha: 1.0)
        
        var numberOfPeople = 2.0
        var amountPerPersonVar = total / numberOfPeople
        amountPerPerson.text = String(format: "$%.2f", amountPerPersonVar)
        
        // Do any additional setup after loading the view.
    }
    
    /*-------\/--Actions--\/------------*/
    
    @IBAction func controlDidChnage(sender: AnyObject) {
        
        var tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
    }
    
}
