//
//  HorizontalMenuCollectionViewCell.swift
//  Surf_student_project
//
//  Created by Михаил Светлов on 10.02.2023.
//

import Foundation
import UIKit

class HorizontalMenuCollectionViewCell: UICollectionViewCell {
    
    //MARK: - Constants
    
    private let buttonNormalBackgroundColor = UIColor(red: 243/255, green: 243/255, blue: 245/255, alpha: 1.0)
    private let buttonSelectBackgroundColor = UIColor(red: 49/255, green: 49/255, blue: 49/255, alpha: 1.0)
    
    //MARK: - Views
    
    lazy var categoryButton: UIButton = {
        let categoryButton = UIButton()
        categoryButton.titleLabel?.textAlignment = .center
        categoryButton.setTitleColor(.black, for: .normal)
        categoryButton.setTitleColor(.white, for: .selected)
        categoryButton.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        
        categoryButton.translatesAutoresizingMaskIntoConstraints = false
        
        categoryButton.addTarget(self, action: #selector(buttonTaped), for: .touchUpInside)
        
        return categoryButton
    }()
    
    //MARK: - Methods
    
    @objc func buttonTaped() {
        if categoryButton.isSelected == true {
            categoryButton.isSelected = false
            backgroundColor = buttonNormalBackgroundColor
        } else {
            categoryButton.isSelected = true
            backgroundColor = buttonSelectBackgroundColor
            
        }
    }
    
    private func setupViews() {
        backgroundColor = buttonNormalBackgroundColor
        layer.cornerRadius = 10
        addSubview(categoryButton)
    }
    
    //MARK: - Lifecycle
 
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setConstraints()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    //MARK: - Constraints
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            categoryButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            categoryButton.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
