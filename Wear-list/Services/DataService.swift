//
//  DataService.swift
//  Wear-list
//
//  Created by User on 13.04.2018.
//  Copyright © 2018 MPTechnologies. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    
    private let categories = [
    Category(title: "SHIRTS", imageName: "shirts.png"),
    Category(title: "HOODIES", imageName: "hoodies.png"),
    Category(title: "HATS", imageName: "hats.png"),
    Category(title: "Digital", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Triangle Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Triangle Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Triangle Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Triangle Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Triangle Logo Hoodie Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Triangle Logo Hoodie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Triangle Hodie Grey", price: "$22", imageName: "hoodie03.png"),
        Product(title: "Triangle Hoodie Black", price: "$20", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Triangle Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Triangle Badge Shirt Light Grey", price: "$19", imageName: "shirt02.png"),
        Product(title: "Triangle Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: "$18", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "$18", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() ->[Category] {
        return categories
    }
    
    func getProducts(ProductForTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
           return getShirts()
        case "HATS":
           return getHats()
        case "HOODIES":
           return getHoodies()
        case "Digital":
           return getDigitalGoods()
        default:
           return getShirts()
        }
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
    
 
}


