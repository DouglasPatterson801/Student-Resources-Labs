//
//  ViewController.swift
//  Lab 3.7 About Me
//
//  Created by Douglas Patterson on 10/5/18.
//  Copyright © 2018 Douglas Patterson. All rights reserved.
//

import UIKit

class ViewController: UITabBarController {

    @IBOutlet weak var aboutMeLabel: UILabel!
    @IBOutlet weak var familyLabel: UILabel!
    @IBOutlet weak var hobbiesLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    var aboutMeLabelMessage: String = "Hi! \n I'm Doug! Thanks for checking out this simple app all about me. I love learning about coding and after this I'm sure you'll love what you've learned about me!"

    var familyLabelMessage: String = "This incredible little two year old is my daughter, Norah. She loves dance parties and has the largest vocabulary of anyone toddler I know."

    var hobbiesLabelMessage = "One thing you should know about me is I love playing music, particularly the accordion. It's nerdy as ever and I'm proud of that!"

    @IBAction func aboutMeButtonTapped(_ sender: UIButton) {
        aboutMeLabel.text = aboutMeLabelMessage
    }

    @IBAction func familyButtonTapped(_ sender: UIButton) {
        familyLabel.text = familyLabelMessage
    }

    @IBAction func hobbiesButtonTapped(_ sender: UIButton) {
        hobbiesLabel.text = hobbiesLabelMessage
    }
    
    
    
    
}

