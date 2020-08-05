//
//  ViewController.swift
//  SampleApp
//
//  Created by Rajesh Ramachandrakurup on 5/8/20.
//  Copyright © 2020 Rajesh Ramachandrakurup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!

    let model = MyModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func inputEditingDidChange(_ sender: UITextField) {
        if let text = sender.text {
            resultLabel.text = model.fetchNumber(from: text)
        }
    }
    
}

