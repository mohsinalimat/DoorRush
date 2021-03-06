//
//  CategoryCollectionCell.swift
//  DoorRush
//
//  Created by edwin on 03/06/2020.
//  Copyright © 2020 edwin. All rights reserved.
//

import UIKit

class CategoryCollectionCell: BaseCollectionCell {
    
    let categories = [
        Category(imageName: "burger", title: "Burgers"),
        Category(imageName: "paella", title: "Paella"),
        Category(imageName: "pizza", title: "Pizza"),
        Category(imageName: "vegan", title: "Vegan"),
        Category(imageName: "soup", title: "Soup"),
        Category(imageName: "spaghetti", title: "Spaghetti"),
        Category(imageName: "french-fries", title: "Fast Food"),
    ]
    
    override func setupViews() {
        super.setupViews()
    }
    
    override func registerClass() {
        collectionView.register(CategoryCell.self, forCellWithReuseIdentifier: CategoryCell.reuseIdentifier)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCell.reuseIdentifier, for: indexPath) as! CategoryCell
        cell.category = categories[indexPath.item]
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: frame.width / 4 - 16, height: frame.height)
    }
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 16, left: 16, bottom: 0, right: 16)
    }
    
    
}
