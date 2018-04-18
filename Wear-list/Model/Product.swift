//
//  Product.swift
//  Wear-list
//
//  Created by User on 16.04.2018.
//  Copyright © 2018 MPTechnologies. All rights reserved.
//

import Foundation

struct Product {
    private (set) public var title: String
    private (set) public var price: String
    private (set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}


