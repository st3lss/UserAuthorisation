//
//  UserHobby.swift
//  UserAuthorisation
//
//  Created by Tamerlan on 02.04.2021.
//

import UIKit

class UserHobby: UIViewController {

    @IBOutlet var userBiography: UITextView!
    
    var userBio: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userBiography.text = userBio
    }
}
