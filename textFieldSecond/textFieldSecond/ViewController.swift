//
//  ViewController.swift
//  textFieldSecond
//
//  Created by user on 2023/08/04.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

   
    func setup() {
        view.backgroundColor = UIColor.gray
        textField.keyboardType = .emailAddress
        textField.placeholder = "이메일 입력"
        textField.clearButtonMode = .always
        textField.returnKeyType = .go
    }

    
    @IBAction func doneButtonTapped(_ sender: UIButton) {
    }
    
    
    
    
    
}

