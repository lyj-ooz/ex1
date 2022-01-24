//
//  ViewController.swift
//  HelloSomeone
//
//  Created by YJ on 2022/01/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
    }

    @IBAction func helloPressed(_ sender: UIButton) {
        guard let username = nameTextField.text, !username.isEmpty else { return }
        
        self.view.endEditing(true)
        
        helloLabel.text = "Hello! \(username)"
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
     }
    
}

