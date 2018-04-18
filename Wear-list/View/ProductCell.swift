//
//  ProductCell.swift
//  Wear-list
//
//  Created by User on 16.04.2018.
//  Copyright © 2018 MPTechnologies. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func upateViews(product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productName.text = product.title
        productPrice.text = product.price
    }
}
