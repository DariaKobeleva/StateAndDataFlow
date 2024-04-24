//
//  LoginViewViewModel.swift
//  StateAndDataFlow
//
//  Created by Дарья Кобелева on 22.04.2024.
//

import SwiftUI

final class LoginViewViewModel: ObservableObject {
    private var storageManager = StorageManager.shared
    
    @Published var userName: String
    @Published var isLoggedIn: Bool
    @Published var counter = 0
    
    init() {
        let user = storageManager.loadUser()
        userName = user.name
        isLoggedIn = user.isLoggedIn
    }
    
    var isNameValid: Bool {
        userName.count >= 3
    }
    
    func login() {
        if isNameValid {
            isLoggedIn.toggle()
            storageManager.saveUser(user: User(name: userName, isLoggedIn: true))
        }
    }
    
    func logout() {
        isLoggedIn.toggle()
        userName = ""
        storageManager.deleteUser()
    }
}

