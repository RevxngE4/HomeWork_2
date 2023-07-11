//
//  LoginViewController.swift
//  LessonTwo
//
//  Created by Kate on 11.07.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextfield: UITextField!

    private let password = "Password"

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func loginButtonTapped(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        guard let user = userNameTextField.text, let currentPassword = passwordTextfield.text else {return}

        guard
            user.hasPrefix("8908"),
            currentPassword == password
        else {
            guard let newViewController = storyboard.instantiateViewController(withIdentifier: "ErrorViewController") as? ErrorViewController else {
                return
            }
            present(newViewController, animated: true, completion: nil)
            return
        }

        guard let newViewController = storyboard.instantiateViewController(withIdentifier: "TableViewController") as? TableViewController else {
            return
        }
        navigationController?.pushViewController(newViewController, animated: true)
    }

}
