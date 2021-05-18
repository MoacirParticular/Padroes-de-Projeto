//
//  Coordinator.swift
//  Login-MVVM-C
//
//  Created by Moacir Lamego on 18/05/21.
//

import UIKit

public  protocol Coordinator: AnyObject {
    func start()
}

extension Coordinator {
    func getStoryBoard(nameStoryboard: String) -> UIStoryboard {
        let pathBundle: Bundle = .current
        
        return UIStoryboard(name: nameStoryboard, bundle: pathBundle)
    }
}

extension Bundle {
    static var current: Bundle {
        class DummyClass {
            init() { }
        }
        
        return Bundle(for: DummyClass.self)
    }
}
