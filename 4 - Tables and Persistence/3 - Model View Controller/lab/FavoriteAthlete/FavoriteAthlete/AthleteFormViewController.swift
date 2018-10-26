//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Douglas Patterson on 10/24/18.
//

import UIKit

class AthleteFormViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var leagueTextField: UITextField!
    @IBOutlet weak var teamTextField: UITextField!
    
    var athlete: Athlete?
    
    func updateView() {
        
        guard let athlete = athlete else {return}
        
 
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        // Do any additional setup after loading the view.
    }
    
   
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = nameTextField.text,
            let age = ageTextField.text,
            let team = teamTextField.text,
            let league = leagueTextField.text else {return}
        
        athlete = Athlete(name: name, age: age, league: league, team: team)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
