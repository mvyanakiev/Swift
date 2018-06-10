//
//  SettingsViewController.swift
//  Calculator
//
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
   
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var redLabel: UILabel!
   
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var greenLabel: UILabel!
    
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var blueLabel: UILabel!
   
    @IBOutlet weak var sampleBox: UIView!
    
    @IBOutlet weak var saveButton: UIButton!
    
    @IBOutlet weak var tempLabel: UILabel!
    
    
    
    
    var redComponent:Float = 0.5
    var greenComponent:Float = 0.5
    var blueComponent:Float = 0.5

    
//    @IBAction func redChange(_ sender: UISlider) {
//        redLabel.text = String(Int(round((sender.value)*100)))
//        redComponent = sender.value
//
//        self.sampleBox.backgroundColor = UIColor(red: CGFloat(redComponent), green: CGFloat(greenComponent), blue: 0.5, alpha: 1)
//    }
    
    
    @IBAction func redChange(_ sender: AnyObject) {
        redLabel.text = String(Int(round((redSlider.value)*100)))
        redComponent = redSlider.value
        
        self.sampleBox.backgroundColor = UIColor(red: CGFloat(redComponent), green: CGFloat(greenComponent), blue: CGFloat(blueComponent), alpha: 1)
    }
    
    @IBAction func greenChange(_ sender: AnyObject) {
        greenLabel.text = String(Int(round((greenSlider.value)*100)))
        greenComponent = greenSlider.value
        
        
        self.sampleBox.backgroundColor = UIColor(red: CGFloat(redComponent), green: CGFloat(greenComponent), blue: CGFloat(blueComponent), alpha: 1)
    }
    

    @IBAction func blueChange(_ sender: Any) {
        blueLabel.text = String(Int(round((blueSlider.value)*100)))
        blueComponent = blueSlider.value
        
        
        self.sampleBox.backgroundColor = UIColor(red: CGFloat(redComponent), green: CGFloat(greenComponent), blue: CGFloat(blueComponent), alpha: 1)
    }
    
    
    
    
    
    
    
    
    @IBAction func saveSettings(_ sender: UIButton) {
        
        switch segmentControl.selectedSegmentIndex {
            
        case 0:
            self.tempLabel.text = String("Color for Background will be (RGB):\n \(redComponent) , \(greenComponent), \(blueComponent)")
            
            
        case 1:
            self.tempLabel.text = String("Color for Tint Color will be (RGB):\n \(redComponent) , \(greenComponent), \(blueComponent)")
            
            
            
        case 2:
            self.tempLabel.text = String("Color for Text Color will be (RGB):\n \(redComponent) , \(greenComponent), \(blueComponent)")
            

        default:
            self.tempLabel.text = "001"
            
            
            
        }
        
        
        
    }
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
