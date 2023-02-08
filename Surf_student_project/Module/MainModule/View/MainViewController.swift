//
//  MainViewController.swift
//  Surf_student_project
//
//  Created by Михаил Светлов on 07.02.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .white.withAlphaComponent(CGFloat(0))
//        scrollView.frame = view.bounds
        scrollView.frame = CGRect(x: 0, y: 70, width: view.bounds.width, height: view.bounds.height)
        scrollView.contentSize = contentSize
      
        scrollView.showsVerticalScrollIndicator = false
//        scrollView.contentOffset = CGPoint(x: 0, y: 400)
        
        return scrollView
    }()
    
    private lazy var mainMenuView: UIView = {
        let mainMenuView = UIView()
        mainMenuView.frame = CGRect(x: 0, y: 530, width: view.bounds.width, height: view.bounds.height)
        mainMenuView.backgroundColor = .red
        mainMenuView.layer.cornerRadius = 40
        
        return mainMenuView
    }()
    
    private lazy var footerMenu: UIView = {
        let footerMenu = UIView()
        footerMenu.frame = CGRect(x: 0, y: 700, width: view.bounds.width, height: 300)
        footerMenu.backgroundColor = .green
        
        return footerMenu
    }()
    
    
   
    
    private var contentSize: CGSize {
        CGSize(width: view.frame.width, height: view.frame.height + 500)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        view.addSubview(scrollView)
        scrollView.addSubview(mainMenuView)
        view.addSubview(footerMenu)
        
        

       
    }
    

    

}
