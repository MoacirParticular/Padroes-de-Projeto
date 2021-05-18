//
//  HomeCoordinator.swift
//  Login-MVVM-C
//
//  Created by Moacir Lamego on 18/05/21.
//

import UIKit

public class HomeCoordinator: Coordinator {
    let navigationController: UINavigationController
   
    init (navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    public func start() {
        goViewController()
    }
    
    private func goViewController() {
        let storyBoard = getStoryBoard(nameStoryboard: "Main")        
        
        guard let viewController = storyBoard.instantiateViewController(identifier: "ViewController") as? ViewController else { return }

        self.navigationController.pushViewController(viewController, animated: true)
    }
}
