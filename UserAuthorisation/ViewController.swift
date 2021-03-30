//
//  ViewController.swift
//  UserAuthorisation
//
//  Created by Tamerlan on 30.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userProfileVC = segue.destination as? UserProfileViewController else { return }
        userProfileVC.userNameProfile = userNameTF.text
    }

    @IBAction func logInButton() {
//        if userNameTF.text == "test" && passwordTF.text == "1234" {
//            
//        } else {
//            print("")
//        }
    }
    
}

