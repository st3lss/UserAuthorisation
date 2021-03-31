//
//  UserProfileViewController.swift
//  UserAuthorisation
//
//  Created by Tamerlan on 30.03.2021.
//

import UIKit

class UserProfileViewController: UIViewController {

    @IBOutlet var userNameProfileTF: UITextField!
    @IBOutlet var logOutButton: UIButton!
    
    var userNameProfile: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameProfileTF.text = userNameProfile
    }
    
  
    
    
    
}
