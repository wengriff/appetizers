//
//  User.swift
//  Appetizers
//
//  Created by Adrian Somor on 15/09/2023.
//

import Foundation

struct User: Codable {
    
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthdate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
}
