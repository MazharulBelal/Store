//
//  ProductHomePage.swift
//  Store
//
//  Created by Mazharul Belal on 26/7/18.
//  Copyright © 2018 Mazharul Belal. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class ProductHomePage: UICollectionViewController {
    
    var output = String()
    
    
     var productTitle1 = ["Black Lace Up Rubber Sole Low Top Sneakers","Apricot Faux Suede Lace Up Rubber Sole Low","Pink Satin Fabric Rubber Sole Low Top Sneakers","Pink Velvet Lace Up Rubber Sole Sneakers"]
    var productTitle = ["Black Lace Up Rubber Sole Low Top Sneakers","Apricot Faux Suede Lace Up Rubber Sole Low","Pink Satin Fabric Rubber Sole Low Top Sneakers","Pink Velvet Lace Up Rubber Sole Sneakers"]
    
    var ProductPrice = ["$38","$37","$35","$39"]
    
    var productImages = [UIImage(named: "bg1"),UIImage(named: "bg2"), UIImage(named: "bg3"),UIImage(named: "bg4")]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
      

        // Do any additional setup after loading the view.
    }



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return productTitle.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ProductHomePageCell
    
        cell.ProductTitleLabel.text! = productTitle[indexPath.row]
        cell.AmmountLabel.text! = ProductPrice[indexPath.row]
        cell.ProductImagesView.image = productImages[indexPath.row]
    
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       var output = productTitle[indexPath.row]
        print(output)
    }
    
  


    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
