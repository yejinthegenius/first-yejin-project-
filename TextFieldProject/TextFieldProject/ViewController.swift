//
//  ViewController.swift
//  TextFieldProject
//
//  Created by user on 2023/07/19.
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
        textField.keyboardType = UIKeyboardType.emailAddress
        textField.placeholder = "이메일 입력"
        textField.borderStyle = .roundedRect
        // 노션에 정리
        textField.clearButtonMode = .always
        textField.returnKeyType = .go
    }
    
    
    
    @IBAction func doneButtonTapped(_ sender: UIButton) {
        
    }
    
    
    
    
    
    
}

