//
//  Item.swift
//  MobileInventorySystem
//
//  Created by rifqi triginandri on 03/12/24.
//


struct Item: Identifiable {
    var id: Int
    var name: String
    var description: String
    var category: String
    var price: Double
    var stock: Int
    var imagePath: String
}

