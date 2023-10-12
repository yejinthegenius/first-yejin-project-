//
//  ViewController.swift
//  LoginProject
//
//  Created by user on 2023/10/03.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var emailTextFieldView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        view.layer.cornerRadius = 5
        view.clipsToBounds = true
        view.addSubview(emailTextField)
        view.addSubview(emailInforLabel)
        return view
    }()
    
    private var emailInforLabel: UILabel = {
        let label = UILabel()
        label.text = "이메일주소 또는 전화번호"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return label
    }()
    
    private lazy var emailTextField: UITextField = {
        var tf = UITextField()
        tf.frame.size.height = 48
        tf.backgroundColor = .clear
        tf.textColor = .white
        tf.tintColor = .white
        tf.autocapitalizationType = .none
        tf.autocorrectionType = .no
        tf.spellCheckingType = .no
        tf.keyboardType = .emailAddress
       // tf.addTarget(self, action: #selector(textFieldEditingChanged(_:)), for:.editingChanged)
        return tf
    }()
    
    
    private lazy var passwordTextFieldView: UIView = {
        let view = UIView()
        view.frame.size.height = 48
        view.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        view.layer.cornerRadius = 5
        view.clipsToBounds = true
        view.addSubview(passwordtextfield)
        view.addSubview(passwordInforLabel)
        view.addSubview(passwordSecureButton)
        return view
    }()
 
    private var passwordInforLabel: UILabel = {
        let label = UILabel()
        label.text = "비밀번호"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        return label
    }()
    
    
    private let passwordtextfield: UITextField = {
        let tf = UITextField()
        tf.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        tf.frame.size.height = 48
        tf.backgroundColor = .clear
        tf.textColor = .white
        tf.tintColor = .white
        tf.autocapitalizationType = .none
        tf.autocorrectionType = .no
        tf.spellCheckingType = .no
        tf.isSecureTextEntry = true
        tf.clearsOnBeginEditing = false
       // tf.addTarget(self, action: #Selector(textFieldEditingChanged(_:)), for: .editingChanged)
        return tf
    }()
    
    private let passwordSecureButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("표시", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .light)
        //button.addTarget(self, action: #selector(passwordSecurModeSetting), for: .touchUpInside)
        return button
    }()
    
    private let loginButton: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = .clear
        button.layer.cornerRadius = 5
        button.clipsToBounds = true
        button.layer.borderWidth = 1
        button.layer.borderColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        button.setTitle("로그인", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.isEnabled = false
        return button
    }()
    
    
    lazy var stackView: UIStackView = {
       let st = UIStackView(arrangedSubviews: [emailTextFieldView, passwordTextFieldView, loginButton])
        st.spacing = 18
        st.axis = .vertical
        st.distribution = .fillEqually
        st.alignment = .fill
            return st
    }()
    
    private let textViewHeight: CGFloat = 48
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
        
    }


    func setupUI() {
        view.addSubview(stackView)
//        stackView.addSubview(emailTextFieldView)
//        stackView.addSubview(passwordTextFieldView)
//        stackView.addSubview(loginButton)
        
        emailInforLabel.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordInforLabel.translatesAutoresizingMaskIntoConstraints = false
        passwordtextfield.translatesAutoresizingMaskIntoConstraints = false
        passwordSecureButton.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            emailInforLabel.leadingAnchor.constraint(equalTo: emailTextFieldView.leadingAnchor, constant: 8),
            emailInforLabel.trailingAnchor.constraint(equalTo: emailTextFieldView.trailingAnchor, constant: 8),
            emailInforLabel.centerYAnchor.constraint(equalTo: emailTextFieldView.centerYAnchor),
            
            emailTextField.leadingAnchor.constraint(equalTo: emailTextFieldView.leadingAnchor, constant: 8),
            emailTextField.trailingAnchor.constraint(equalTo: emailTextFieldView.trailingAnchor, constant: 8),
            emailTextField.topAnchor.constraint(equalTo: emailTextFieldView.topAnchor, constant: 15),
            emailTextField.bottomAnchor.constraint(equalTo: emailTextFieldView.bottomAnchor, constant: 2),
            
            passwordInforLabel.leadingAnchor.constraint(equalTo:passwordTextFieldView.leadingAnchor, constant: 8),
            passwordInforLabel.trailingAnchor.constraint(equalTo: passwordTextFieldView.trailingAnchor, constant: 8),
            passwordInforLabel.centerYAnchor.constraint(equalTo: passwordTextFieldView.centerYAnchor),
            
            passwordtextfield.topAnchor.constraint(equalTo: passwordTextFieldView.topAnchor, constant: 15),
            passwordtextfield.bottomAnchor.constraint(equalTo: passwordTextFieldView.bottomAnchor, constant: 2),
            passwordtextfield.leadingAnchor.constraint(equalTo: passwordTextFieldView.leadingAnchor, constant: 8),
            passwordtextfield.trailingAnchor.constraint(equalTo: passwordTextFieldView.trailingAnchor, constant: 8),
            
            passwordSecureButton.topAnchor.constraint(equalTo: passwordTextFieldView.topAnchor, constant: 15),
            passwordSecureButton.bottomAnchor.constraint(equalTo: passwordTextFieldView.bottomAnchor, constant: -15),
            passwordSecureButton.trailingAnchor.constraint(equalTo: passwordTextFieldView.trailingAnchor, constant: -8),
            
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            stackView.heightAnchor.constraint(equalToConstant: textViewHeight*3 + 36)
        
        ])
        
        
        
        
    
    }
    
}

