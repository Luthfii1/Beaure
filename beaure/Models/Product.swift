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
}
