//
//  ViewController.swift
//  calculator-2
//
//  Created by Milko Yanakiev on 14.05.18 г..
//  Copyright © 2018 г. Milko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var btn1: UIButton!
    
    // boolean to check whether typing a num or pressing an operation
    var isTypingNumber = false
    var firstNumber:Int = 0
    var secondNumber = 0
    var operation = ""
    
    @IBOutlet var calculatorDisplay: UILabel!
    
    
    
    
    @IBAction func numberTapped(sender: AnyObject) {
        let number = sender.currentTitle
        
        if isTypingNumber {
            calculatorDisplay.text = calculatorDisplay.text! + number!!
        } else {
            calculatorDisplay.text = number!
            isTypingNumber = true
        }
    }
    
    @IBAction func calculationTapped(sender: AnyObject) {
        isTypingNumber = false
        firstNumber = Int(calculatorDisplay.text!)!
        operation = sender.currentTitle!!
    }
    
    @IBAction func equalsTapped(sender: AnyObject) {
        isTypingNumber = false
        var result = 0
        secondNumber = Int(calculatorDisplay.text!)!

        if operation == "+" {
            result = firstNumber + secondNumber
        } else if operation == "-" {
            result = firstNumber - secondNumber
        }
        
        calculatorDisplay.text = "\(result)"
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
