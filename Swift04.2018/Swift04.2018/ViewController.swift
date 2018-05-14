//
//  ViewController.swift
//  Swift04.2018
//
//  Created by Milko Yanakiev on 9.05.18 г..
//  Copyright © 2018 г. Milko Yanakiev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // link-ваме нещата от вюто към класа
    @IBOutlet weak var labelScr1: UILabel!
    @IBOutlet weak var textField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.LabelScr1.text = "test 1"
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
   // това сменя цвета на текста
    
    @IBAction func btn(_ sender: UIButton) {
        self.labelScr1.text = ""
        self.labelScr1.textColor = UIColor.brown
        self.textField.text = ""
    }
    

    @IBAction func writeText(_ sender: UITextField) {
        self.labelScr1.text = self.textField.text
        self.textField.resignFirstResponder()
    }
    
    
    
    
//    @IBAction func textField(_ sender: UITextField) {
//        self.LabelScr1.text = self.textField.text
//        self.LabelScr1.textColor = UIColor.red
//        self.textField.resignFirstResponder()
//    }
    
    
    

}




