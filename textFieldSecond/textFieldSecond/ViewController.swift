//
//  ViewController.swift
//  textFieldSecond
//
//  Created by user on 2023/08/04.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.delegate = self
        
        setup()
    }

   
    func setup() {
        view.backgroundColor = UIColor.gray
        textField.keyboardType = .emailAddress
        textField.placeholder = "이메일 입력"
        textField.clearButtonMode = .always
        textField.returnKeyType = .go
        
        textField.becomeFirstResponder()
        
        
    }

    //델리게이트라는 자격증. 자격증에는 필수 요구사항이 따름
    
    //텍스트필드의 입력을 시작할 때 호출하는 것 (시작 할 지 말 지 여부 허락)
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    //참과 거짓여부를 묻지 않는 메서드는 대부분 시점
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("유져가 입력을 시작했다.")
    }
    
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        return true
    }
    
    // 텍스트필드의 글자 내용이 한 글자 마다 입력되거나 지워질 때 호출이 되고 (허락여부)
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // print(string)
        
        //        let maxLength = 10
        //           let currentString: NSString = (textField.text ?? "") as NSString
        //           let newString: NSString =
        //        currentString.replacingCharacters(in: range, with: string) as NSString
        //           return newString.length <= maxLength
        
        
        
        //        if (textField.text?.count)! + string.count > 10 {
        //            return false
        //        } else {
        //            return true
        //
        //        }
        
        if Int(string) != nil {
            return false
        } else {
            guard let text = textField.text else { return true }
            let newLength = text.count + string.count - range.length
            return newLength <= 10
        }
        
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField.text == "" {
            textField.placeholder = "Type Something!"
            return false
        } else {
            return true
        }
    }
    
 
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        //실제 텍스트필드의 입력이 끝났을 때 호출 (시점메서드)
        print("유저가 입력을 끝냈다.")
        textField.text = ""
    }
     
    
    
    @IBAction func doneButtonTapped(_ sender: UIButton) {
    }
    
    
    
    
    
}

