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
        userNameTF.autocorrectionType = .no
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userProfileVC = segue.destination as? UserProfileViewController
        else { return }
        userProfileVC.userNameProfile = userNameTF.text
        
    }

    @IBAction func logInButton() {
        if userNameTF.text == "test" && passwordTF.text == "123" { return }
        else {
           showAlert(with: "The email/password you entered incorrect", and: "Please try again")
        }
    }
    
    @IBAction func alertFogotUserName() {
        showAlert(with: "Your name is", and: "test")
    }
    
    @IBAction func alertForgotPassword() {
        showAlert(with: "Your password is", and: "123")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
    }
    
}

extension ViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userNameTF.text = ""
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


