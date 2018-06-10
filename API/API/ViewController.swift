//
//  ViewController.swift
//  API
//
//  Created by Milko Yanakiev on 6.06.18 г..
//  Copyright © 2018 г. Milko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        RequestManager.sendRequest()
    }
    
}

