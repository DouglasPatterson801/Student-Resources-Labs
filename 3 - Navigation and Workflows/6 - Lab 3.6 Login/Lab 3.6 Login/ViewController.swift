//
//  ViewController.swift
//  Lab 3.6 Login
//
//  Created by Douglas Patterson on 10/3/18.
//  Copyright © 2018 Douglas Patterson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title =
                userNameTextField.text
        }
    }
    
    @IBAction func forgotUserName(_ sender: Any) {
        performSegue(withIdentifier: "ForgotUserNameOrPassword", sender: forgotUserNameButton)
    }
    
    @IBAction func forgotPasswordButton(_ sender: Any) {
        performSegue(withIdentifier: "ForgotUserNameOrPassword", sender: forgotPasswordButton)
    }
    
    
    
}
