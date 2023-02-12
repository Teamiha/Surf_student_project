//
//  MainViewController.swift
//  Surf_student_project
//
//  Created by Михаил Светлов on 07.02.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    //MARK: - Constants
    
    private var contentSize: CGSize {
        CGSize(width: view.frame.width, height: view.frame.height + 500)
    }
    
    //MARK: - Views
    
    private let horizontalMenu = HorizontalMenuCollectionView()
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .white.withAlphaComponent(CGFloat(0))
        scrollView.frame = CGRect(x: 0, y: 70, width: view.bounds.width, height: view.bounds.height)
        scrollView.contentSize = contentSize
        scrollView.bounces = false
      
        scrollView.showsVerticalScrollIndicator = false

        
        return scrollView
    }()
    
    private lazy var backgroundImage: UIImageView = {
        let backgroundImage = UIImageView()
        backgroundImage.image = UIImage(named: "backgroundImage")
        backgroundImage.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        
        return backgroundImage
    }()
    
    private lazy var mainMenuView: UIView = {
        let mainMenuView = UIView()
        mainMenuView.frame = CGRect(x: 0, y: 530, width: view.bounds.width, height: view.bounds.height)
        mainMenuView.backgroundColor = .white
        mainMenuView.layer.cornerRadius = 40
        
        return mainMenuView
    }()
    
    private lazy var footerMenu: UIView = {
        let footerMenu = UIView()
        footerMenu.frame = CGRect(x: 0, y: 700, width: view.bounds.width, height: 300)
        footerMenu.backgroundColor = .green
        
        return footerMenu
    }()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        view.addSubview(backgroundImage)
        view.addSubview(scrollView)
        scrollView.addSubview(mainMenuView)
        view.addSubview(footerMenu)
        mainMenuView.addSubview(horizontalMenu)
        setConstraint()
    }
}

//MARK: - Constraints

extension MainViewController {
    private func setConstraint() {
        NSLayoutConstraint.activate([
            horizontalMenu.topAnchor.constraint(equalTo: mainMenuView.safeAreaLayoutGuide.topAnchor, constant: 200),
            horizontalMenu.leadingAnchor.constraint(equalTo: mainMenuView.leadingAnchor, constant: 20),
            horizontalMenu.trailingAnchor.constraint(equalTo: mainMenuView.trailingAnchor, constant: 0),
            horizontalMenu.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
}
