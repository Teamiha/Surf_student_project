//
//  HorizontalMenuCollectionViewCell.swift
//  Surf_student_project
//
//  Created by Михаил Светлов on 10.02.2023.
//

import Foundation
import UIKit

class HorizontalMenuCollectionViewCell: UICollectionViewCell {
    
    let nameCategoryLabel: UILabel = {
        let nameCategoryLabel = UILabel()
        nameCategoryLabel.textAlignment = .center
        nameCategoryLabel.textColor = .black
        nameCategoryLabel.font = UIFont(name: "Arial Bold", size: 18)
        
        nameCategoryLabel.translatesAutoresizingMaskIntoConstraints = false
        return nameCategoryLabel
    }()
    
    override var isSelected: Bool {
        didSet {
            
            backgroundColor = self.isSelected ? .black : .white
            nameCategoryLabel.textColor = self.isSelected ? .red : .black
            
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        
        backgroundColor = .white
        layer.cornerRadius = 10
        
        addSubview(nameCategoryLabel)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            nameCategoryLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            nameCategoryLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    
}
