//
//  CategoryVC.swift
//  AthleticInstinct
//
//  Created by Zachary Blauvelt on 9/30/17.
//  Copyright © 2017 ZackBlauvelt. All rights reserved.
//

import UIKit



 let reuseIdentifier = "CategoryCell"

var categories = ["10 Minutes","15 Minutes","Bodyweight","Kettlebell","Battle Ropes","Dumbbells","Core Work","Upper Body","Lower Body","30 Minutes"]

class CategoryVC: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Register cell classes
        //self.collectionView!.register(CategoryViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        // Do any additional setup after loading the view.
        
    }
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return categories.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier:reuseIdentifier, for: indexPath) as! CategoryViewCell
        
        // Configure the cell
       let categoryName = categories[indexPath.row]
        cell.categoryNameLabel.text = categoryName
        
        //cell.layer.cornerRadius = 150/2
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToWorkOuts", sender: indexPath)
    }

}
