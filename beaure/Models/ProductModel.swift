//
//  Product.swift
//  beaure
//
//  Created by Luthfi Misbachul Munir on 03/04/24.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var location: String
    var beforePrice: Int
    var afterPrice: Int
    var star: Double
    var sold: Double
    var link: String
}

struct ECommerce : Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var voucher: Int
}

struct CompareSingleProduct : Identifiable {
    var id = UUID()
    var image : String
    var name : String
    var price : Int
}

struct CompareProduct : Identifiable {
    var id = UUID()
    var Product1 : CompareSingleProduct
    var Product2 : CompareSingleProduct
    var Date : Date
}
