//
//  ViewController.swift
//  05
//
//  Created by Milko Yanakiev on 12.05.18 г..
//  Copyright © 2018 г. Milko. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var picture01: UIImageView!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var mySw: UISwitch!
    @IBOutlet weak var smallView: UIView!
    @IBOutlet weak var alphaLabel: UILabel!
    @IBOutlet weak var smallViewSwitch: UISwitch!
    @IBOutlet weak var bigSLider: UISlider!
    @IBOutlet weak var steppSlider: UISlider!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.myTextField.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
//        self.picture01.alpha = 1
//        self.smallView.backgroundColor = .black
//        self.picture01.tintColor = UIColor.orange
        self.mySw.onTintColor = UIColor(red: 0.85 , green: 0, blue: 0 , alpha: 1)
    }
    
    
    @IBAction func bigSliderControl(_ sender: UISwitch) {
        if mySw.isOn {
            bigSLider.isEnabled = true
        } else {
            bigSLider.isEnabled = false
        }
    }
    
    
    @IBAction func changeSwitchColor(_ sender: UISlider) {
        self.mySw.onTintColor = UIColor(red: CGFloat(sender.value), green: 0, blue: 0, alpha: 1)
    }
    
    
    @IBAction func steppedValueChange(_ sender: UISlider) {
        let value = Int(sender.value) // маха десетичната запетая
        sender.value = Float(value) // снапва към целочислено число, движи се на степени
    }
    
    
    
    
    
    
    @IBAction func slide(_ sender: UISlider) {
        self.picture01.alpha = CGFloat(sender.value)
        self.alphaLabel.text = String(round((sender.value) * 100))
    }
    
    
    
    
    @IBAction func changeViewBackground(_ sender: UISwitch) {
        if smallViewSwitch.isOn {
            self.smallView.backgroundColor = .black
            smallViewSwitch.thumbTintColor = .red
        } else {
            self.smallView.backgroundColor = .red
            smallViewSwitch.thumbTintColor = .black
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if string == " " {
            return false
        }
        return true
    }
}

