//
//  LoginViewViewModel.swift
//  StateAndDataFlow
//
//  Created by Дарья Кобелева on 22.04.2024.
//

import SwiftUI

final class LoginViewViewModel: ObservableObject {
    
    @Published var name = ""
    @Published var isLoggedIn = false
    @Published var counter = 0
    
    var isNameValid = false
    
    func validateUsername() {
        isNameValid = name.count >= 3
    }
    
    func login() {
        if !name.isEmpty {
            isLoggedIn.toggle()
        }
    }
}
