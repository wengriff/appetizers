//
//  Alert.swift
//  Appetizers
//
//  Created by Adrian Somor on 10/09/2023.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    // MARK: - Network Alerts
    static let invalidData      = AlertItem(title: Text("Server Error"), message: Text("The data received from the server was invalid. Please contact support"), dismissButton: .default(Text("OK")))
    
    static let invalidResponse  = AlertItem(title: Text("Server Error"), message: Text("Invalid response from the server. Please try again later."), dismissButton: .default(Text("OK")))
    
    static let invalidURL       = AlertItem(title: Text("Server Error"), message: Text("There was an issue connecting to the server. If this persists contact the support."), dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"), message: Text("Unable to complete your request. Check your internet connection."), dismissButton: .default(Text("OK")))
    
    // MARK: - Account Alerts
    static let invalidForm      = AlertItem(title: Text("Invalid Form"), message: Text("Please ensure all the forms are filled out."), dismissButton: .default(Text("OK")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"), message: Text("Please ensure your email is correct."), dismissButton: .default(Text("OK")))
    
    static let invalidUserData = AlertItem(title: Text("Profile Error"), message: Text("There was an error while saving or retrieving your profile."), dismissButton: .default(Text("OK")))
    
    static let userSaveSuccess = AlertItem(title: Text("Profile Saved"), message: Text("Your profile information was successfully saved!"), dismissButton: .default(Text("OK")))
    
    static let genericError = AlertItem(title: Text("Generic Error"), message: Text("Oops! Something went wrong, please come back later."), dismissButton: .default(Text("OK")))
}
