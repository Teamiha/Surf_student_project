//
//  SceneDelegate.swift
//  Surf_student_project
//
//  Created by Михаил Светлов on 06.02.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        
        let viewController = MainViewController()
        
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
    }

}

