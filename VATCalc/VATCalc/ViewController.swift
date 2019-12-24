//
//  ViewController.swift
//  VATCalc
//
//  Created by MacBookPro on 10/22/18.
//  Copyright © 2018 bsmrstu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var totalvat: UILabel!
    @IBOutlet weak var totallabel: UILabel!
    @IBOutlet weak var vatlabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func slideraction(_ sender: Any) {
        var sli = Double(slider.value)
        let slip = Int(slider.value)
        vatlabel.text = String("\(slip) %")
        sli = Double(slip)/100.0
        let vat = Double(textfield.text!)!
        totalvat.text = String(Int((vat*sli)))
        let total = vat + (vat * sli)
        let tp = Int(total)
        totallabel.text = String(tp)
        
    }
    

}

