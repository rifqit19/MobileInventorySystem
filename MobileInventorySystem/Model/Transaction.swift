//
//  Transaction.swift
//  MobileInventorySystem
//
//  Created by rifqi triginandri on 10/12/24.
//
import Foundation

struct Transaction: Identifiable {
    var id: Int
    var itemId: Int
    var itemName: String
    var type: String
    var quantity: Int
    var date: Date
}
