//
//  HorizontalMenuCollectionView.swift
//  Surf_student_project
//
//  Created by Михаил Светлов on 10.02.2023.
//

import Foundation
import UIKit

//protocol SelectCollectionViewItemProtocol: AnyObject {
//    func selectItem(index: IndexPath)
//}

class HorizontalMenuCollectionView: UICollectionView  {
    
    //MARK: - Constants
    
    private let nameCategoryArray = ["iOS", "Android", "Design", "QA", "Flutter", "PM"]
    
    //MARK: - Views

    private let categoryLayout = UICollectionViewFlowLayout()
    
    //MARK: - Lifecycle
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: .zero, collectionViewLayout: categoryLayout)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Private Methods
    
    private func configure() {
        categoryLayout.minimumInteritemSpacing = 12
        categoryLayout.scrollDirection = .horizontal
        
        backgroundColor = .white
        translatesAutoresizingMaskIntoConstraints = false
        bounces = false
        showsHorizontalScrollIndicator = false
        
        delegate = self
        dataSource = self
        
        register(HorizontalMenuCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
    }
}

//MARK: - UICollectionViewDataSource

extension HorizontalMenuCollectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        nameCategoryArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? HorizontalMenuCollectionViewCell else
        { return UICollectionViewCell() }
        
        cell.categoryButton.setTitle(nameCategoryArray[indexPath.item], for: .normal)
        
        return cell
    }
    
}

//MARK: - UICollectionViewDelegate

extension HorizontalMenuCollectionView: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
}

//MARK: - UICollectionViewDelegateFlowLayout

extension HorizontalMenuCollectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let categoryFont = UIFont.systemFont(ofSize: 14)
        let categoryAttributes = [NSAttributedString.Key.font : categoryFont as Any]
        let categoryWidth = nameCategoryArray[indexPath.item].size(withAttributes: categoryAttributes).width + 48
        let categoryHeight = nameCategoryArray[indexPath.item].size(withAttributes: categoryAttributes).height + 24
        
        return CGSize(width: categoryWidth, height: categoryHeight)
    }
}
