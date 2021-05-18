//
//  LoginView.swift
//  Login-MVVM-C
//
//  Created by Moacir Lamego on 18/05/21.
//

import UIKit

class LoginView: UIView {
    fileprivate let logoImageView: UIImageView = {
        let iv = UIImageView()
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 12
        iv.image = UIImage(named: "logo")
        
        return iv
    }()
    
    lazy var userLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Usuário"
        label.font = UIFont.systemFont(ofSize: 27, weight: .semibold)
        label.textColor = .black
        
        return label
    }()
    
    lazy var userTextField: UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.backgroundColor = .backgroundTextColor
        text.textColor = .textColor
        text.text = ""
        
        return text
    }()
    
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Senha"
        label.font = UIFont.systemFont(ofSize: 27, weight: .semibold)
        label.textColor = .black
        
        return label
    }()
    
    lazy var passwordTextField: UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.backgroundColor = .backgroundTextColor
        text.textColor = .textColor
        text.text = ""
        
        return text
    }()
    
    let buttonLogin: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.frame = .zero
        btn.backgroundColor = .blue
        btn.setTitle("Entrar", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.layer.cornerRadius = 10
        
        return btn
    }()
    
    let buttonNewAccount: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.frame = .zero
        btn.backgroundColor = .blue
        btn.setTitle("Nova conta", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.layer.cornerRadius = 10
        
        return btn
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        createView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func createView() {
        self.backgroundColor = .backgroundColor
        
        self.addSubview(logoImageView)
        self.addSubview(userLabel)
        self.addSubview(userTextField)
        self.addSubview(passwordLabel)
        self.addSubview(passwordTextField)
        self.addSubview(buttonLogin)
        
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 50),
            logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            logoImageView.widthAnchor.constraint(equalToConstant: 100),
            logoImageView.heightAnchor.constraint(equalToConstant: 100),
            
            userLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 24),
            userLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
            userLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12),
            
            userTextField.topAnchor.constraint(equalTo: userLabel.bottomAnchor, constant: 8),
            userTextField.leadingAnchor.constraint(equalTo: userLabel.leadingAnchor, constant: 0),
            userTextField.trailingAnchor.constraint(equalTo: userLabel.trailingAnchor, constant: 0),
            userTextField.heightAnchor.constraint(equalToConstant: 40),
            
            passwordLabel.topAnchor.constraint(equalTo: userTextField.bottomAnchor, constant: 16),
            passwordLabel.leadingAnchor.constraint(equalTo: userLabel.leadingAnchor, constant: 0),
            passwordLabel.trailingAnchor.constraint(equalTo: userLabel.trailingAnchor, constant: 0),
            
            passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 8),
            passwordTextField.leadingAnchor.constraint(equalTo: passwordLabel.leadingAnchor, constant: 0),
            passwordTextField.trailingAnchor.constraint(equalTo: userLabel.trailingAnchor, constant: 0),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            
            buttonLogin.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 12),
            buttonLogin.trailingAnchor.constraint(equalTo: userLabel.trailingAnchor, constant: 0),
            buttonLogin.heightAnchor.constraint(equalToConstant: 50),
            
            buttonNewAccount.topAnchor.constraint(equalTo: buttonLogin.bottomAnchor, constant: 12),
            buttonNewAccount.trailingAnchor.constraint(equalTo: userLabel.trailingAnchor, constant: 0),
            buttonNewAccount.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
}

