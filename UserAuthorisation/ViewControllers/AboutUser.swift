//
//  AboutUser.swift
//  UserAuthorisation
//
//  Created by Tamerlan on 02.04.2021.
//

import UIKit

class AboutUser: UIViewController {

    @IBOutlet var userBorn: UILabel!
    @IBOutlet var userDied: UILabel!
    @IBOutlet var userMovement: UILabel!
    @IBOutlet var userBiography: UITextField!
    
    
    var userB: String!
    var userD: String!
    var userM: String!
    var userBio: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userBorn.text = userB
        userDied.text = userD
        userMovement.text = userM
    }
}

