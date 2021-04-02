//
//  LoginViewController.swift
//  UserAuthorisation
//
//  Created by Tamerlan on 30.03.2021.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    // MARK: - Private properties
    private let user = "test"
    private let password = "123"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.autocorrectionType = .no
    }
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let tabBarController = segue.destination as? UITabBarController {
            tabBarController.viewControllers?.forEach {
                if let userProfileVC = $0 as? UserProfileViewController {
                    userProfileVC.userNameProfile = user
                }
            }
        }
    }
    

    // MARK: IBActions
    @IBAction func logInButton() {
        if userNameTF.text != user || passwordTF.text != password {
            showAlert(with: "The email/password you entered incorrect", and: "Please try again")
            return
        }
        
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func alertFogotUserName() {
        showAlert(with: "Your name is", and: user)
    }
    
    @IBAction func alertForgotPassword() {
        showAlert(with: "Your password is", and: password)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
}

// MARK: - Alert Controller
extension LoginViewController {
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

// MARK: - Work with keyboard
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        } else {
            logInButton()
        }
        return true
    }
}


