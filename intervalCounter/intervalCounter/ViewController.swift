//
//  ViewController.swift
//  intervalCounter
//
//  Created by Milko Yanakiev on 6.06.18 г..
//  Copyright © 2018 г. Milko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!

    
    @IBAction func startIntervals(_ sender: UIButton) {
        
        let slow:Int = 2
        let fast = 2
        let repeatInterval:Int = 4
//        self.label.text = String(repeatInterval)
        
        for i in 1...repeatInterval {
            
//            self.label.text = String(repeatInterval - i)

            if (i % 2 == 0) {
                for _ in 1...slow {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1 ) {
                       self.view.backgroundColor = .green
                    }
                }
            } else if (i % 2 != 0) {
                for _ in 1...fast {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1 ) {
                        self.view.backgroundColor = .red
                    }
                }

            }
            
        }
    
    
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




