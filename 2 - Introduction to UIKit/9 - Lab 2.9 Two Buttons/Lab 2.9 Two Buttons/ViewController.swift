//
//  ViewController.swift
//  Lab 2.9 Two Buttons
//
//  Created by Douglas Patterson on 9/20/18.
//  Copyright © 2018 Douglas Patterson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      textField.text = "Enter your message here!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func setTextButtonTapped(_ sender: Any) {
    textLabel.text = textField.text
    textField.text = ""
    }
    
    @IBAction func clearTextButtonTapped(_ sender: Any) {
        textLabel.text = ""
        textField.text = ""
    }
    
    
}

