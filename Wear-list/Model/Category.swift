//
//  Category.swift
//  Wear-list
//
//  Created by User on 13.04.2018.
//  Copyright © 2018 MPTechnologies. All rights reserved.
//

import Foundation


struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
