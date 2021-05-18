//
//  LoginViewController.swift
//  Login-MVVM-C
//
//  Created by Moacir Lamego on 18/05/21.
//

import UIKit

class LoginViewController: UIViewController {
    var onTryingToLogin: ((_ userName: String,
                           _ password: String) -> Void)?
    
    let loginView: LoginView = {
        let view = LoginView()
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLoginView()
    }
    
    override func loadView() {
        self.view = loginView
    }
    
    private func setupLoginView() {
        loginView.buttonLogin.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    }
    
    @objc
    func buttonAction(sender: UIButton!) {
        onTryingToLogin?(loginView.userTextField.text ?? "", loginView.passwordTextField.text ?? "")
    }
}
