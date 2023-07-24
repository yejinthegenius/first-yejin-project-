//
//  ViewController.swift
//  TextFieldProject
//
//  Created by user on 2023/07/19.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {
    
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        textField.delegate = self
        
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
        
        textField.becomeFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
    
    // 텍스트 필드의 입력을 시작할 때 호출이 되는 메서드 ( 시작 할 지 말 지의 여부를 허락하는 것)
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    // 이렇게 참과 거짓을 리턴하지 않는 메서드는 보통 어떤 시점을 의미. 텍스트 필드의 입려이 시작된 시점.
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("유저가 텍스트필드의 입력을 시작했다.")
    }
    
    // 슈드 = 허락할지 말지. 깔끔하게 없애는 걸 허락할지 말지. 어떤 조건이 되면 없앨지 말지 결정 가능
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        return true
    }
    
    // 텍스트필드 글자 내용이 (한글자 한글자) 입력되거나 지워질 때 호출이 되고 (허락)
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {

        let maxLength = 10
        let currentString: NSString = (textField.text ?? "") as NSString
        let newString: NSString =  currentString.replacingCharacters(in: range, with: string) as NSString

        return newString.length <= maxLength
        }
        
    
// bool 타입 = 허락을 한다 안 한다의 개념. 즉 엔터가 눌러지게 할 거니 말 거니. 눌러지면 다음 동작을 허락할 것.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }

    // 텍스트필드의 입력이 실제 끝났을 때 호출 (시점)
    func textFieldDidEndEditing(_ textField: UITextField) {
     print("유저가 텍스트필드의 입력을 끝냈다.")
    }
    
    
    
    @IBAction func doneButtonTapped(_ sender: UIButton) {
        
        textField.resignFirstResponder()
        
        
        
        
    }
    

    
}

