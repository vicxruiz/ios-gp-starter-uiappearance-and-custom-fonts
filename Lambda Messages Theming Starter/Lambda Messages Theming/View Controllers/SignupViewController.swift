//
//  SignupViewController.swift
//  UIAppearanceAndAnimation
//
//  Created by Spencer Curtis on 8/20/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpAppearance()

        guard AuthenticationHelper.currentUser != nil else { return }
        
        performSegue(withIdentifier: "ViewMessageList", sender: nil)
    }
    
    @IBAction func signUp(_ sender: Any) {
        guard let username = usernameTextField.text else { return }
        
        AuthenticationHelper.setCurrentUser(to: username)
        
        performSegue(withIdentifier: "ViewMessageList", sender: nil)
    }
    
    private func setUpAppearance() {
        view.backgroundColor = AppearanceHelper.backgroundGray
    }
    
    @IBOutlet weak var signupButton: UIButton!
    @IBOutlet weak var usernameTextField: UITextField!
}
