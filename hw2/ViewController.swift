//
//  ViewController.swift
//  LessonTwo
//
//  Created by Nikita Sosyuk on 30.06.2023.
//

import UIKit

class NewViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    @IBAction func backButtonDidTap(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    func setUp(title: String) {
        titleLabel.text = title
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "Nikita"
        logoImageView.layer.cornerRadius = 30
    }
    
    @IBAction func buttonDidTap(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "NewViewController") else { return }
        
        // present(viewController, animated: true)
        navigationController?.pushViewController(vc, animated: true)
    }
}
