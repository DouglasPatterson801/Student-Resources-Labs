//
//  ViewController.swift
//  Lab 5.3 Contest
//
//  Created by Douglas Patterson on 11/28/18.
//  Copyright © 2018 Douglas Patterson. All rights reserved.
//

import UIKit

struct PropertyKeys {
    static let submitSegue = "submitSegue"
}

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

//ANITMATE THE SHAKING TEXT FIELD
    func noEmailAnimation() {
        UIView.animate(withDuration: 0.15, animations: {
            self.emailTextField.transform = CGAffineTransform(translationX: 25, y: 0)
        }) { (_) in
            
            UIView.animate(withDuration: 0.15) {
             self.emailTextField.transform = .identity
            }
        }
    }
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        if emailTextField.text == "" {
            noEmailAnimation()
        } else {performSegue(withIdentifier: PropertyKeys.submitSegue, sender: nil)}
    }
}

