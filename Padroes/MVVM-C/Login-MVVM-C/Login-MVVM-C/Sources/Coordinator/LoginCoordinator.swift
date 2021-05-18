//
//  LoginCoordinator.swift
//  Login-MVVM-C
//
//  Created by Moacir Lamego on 18/05/21.
//

import Foundation
import UIKit

public class LoginCoordinator: Coordinator {
    let navigationController: UINavigationController
   
    init (navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    public func start() {
        goViewController()
    }
    
    private func goViewController() {
        let viewController = LoginViewController()

        viewController.onTryingToLogin = { user, pwd  in
            
            if user == "Moacir" && pwd == "Lindao" {
                let coordinator = HomeCoordinator(navigationController: self.navigationController)
                coordinator.start()
            }
        }

        self.navigationController.pushViewController(viewController, animated: true)
    }
}
