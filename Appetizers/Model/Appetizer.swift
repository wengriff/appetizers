//
//  Appetizer.swift
//  Appetizers
//
//  Created by Adrian Somor on 09/09/2023.
//

import Foundation

struct Appetizer: Decodable, Identifiable { // or : Codable
    let id: Int // let bcs we are not changing data
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer  = Appetizer(id: 0001,
                                           name: "Test Appetizer",
                                           description: "Description for appetizer",
                                           price: 0.99,
                                           imageURL: "imageURL",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    static let appetizers       = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItemOne     = Appetizer(id: 0001,
                                           name: "Test Appetizer 1",
                                           description: "Description for appetizer",
                                           price: 0.99,
                                           imageURL: "imageURL",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let orderItemTwo     = Appetizer(id: 0002,
                                           name: "Test Appetizer 2",
                                           description: "Description for appetizer",
                                           price: 0.99,
                                           imageURL: "imageURL",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let orderItemThree   = Appetizer(id: 0003,
                                           name: "Test Appetizer 3",
                                           description: "Description for appetizer",
                                           price: 0.99,
                                           imageURL: "imageURL",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let orderItems       = [orderItemOne, orderItemTwo, orderItemThree]
}
