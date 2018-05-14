//
//  ViewController.swift
//  Light
//
//  Created by Milko Yanakiev on 11.05.18 г..
//  Copyright © 2018 г. Milko. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    var lightOn = false
    var initialSound = false
    @IBOutlet weak var lightButton: UIButton!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi()

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: AnyObject) {
        lightOn = !lightOn
        updateUi()
        
        
    }
    
    func updateUi() {
        
        if lightOn {
            view.backgroundColor = .white
            lightButton.setTitle("Гáси", for: .normal)
            lightButton.setTitleColor(.black, for: .normal)
            AudioServicesPlaySystemSound (1004)
            toggleTorch(on: true)
//            hui()

        } else {
            view.backgroundColor = .black
            lightButton.setTitle("Цъкни ламбата", for: .normal)
            lightButton.setTitleColor(.white, for: .normal)
            
            if initialSound {
                AudioServicesPlaySystemSound (1003)
            }
            initialSound = true
            
            toggleTorch(on: false)

        }
        
        
    }
    
    func toggleTorch(on: Bool) {
        guard let device = AVCaptureDevice.default(for: .video) else { return }
        
        if device.hasTorch {
            do {
                try device.lockForConfiguration()
                
                if on == true {
                    device.torchMode = .on
                } else {
                    device.torchMode = .off
                }
                
                device.unlockForConfiguration()
            } catch {
                print("Torch could not be used")
            }
        } else {
            print("Torch is not available")
        }
    }
    
    // тествам системните звуци
//    func hui() {
//
//        for i in 1000...1030 {
//            AudioServicesPlaySystemSound (UInt32(i))
//
//            for wait in 0...500000000 {
//                // chakai malko
//            }
//        }
//    }
    
    
    
    
    
    
    
    
}

