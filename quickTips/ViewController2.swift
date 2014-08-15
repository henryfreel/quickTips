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
    @IBOutlet weak var peopleAmountLabel: UILabel!
    @IBOutlet weak var peopleAmountSlider: UISlider!
    
    var finalBillAmountArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        println(finalBillAmountArray)
        
        billAmountLabel.text = "\(finalBillAmountArray[0])"
        peopleAmountLabel.text = "2"

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
