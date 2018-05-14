//
//  ViewController.swift
//  Calculator
//
//  Created by --- on 10.05.18 г..
//  Copyright © 2018 г. -1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var screen: UILabel!
    let operand1:Double = 0
    let operand2:Double = 0
    
    
    @IBAction func one(_ sender: UIButton) {
        
            screen.text = "1"
        
        // вика функция със собствената си стойност
    }
    
    
   
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

