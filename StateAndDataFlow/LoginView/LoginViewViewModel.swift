//
//  LoginViewViewModel.swift
//  StateAndDataFlow
//
//  Created by Дарья Кобелева on 22.04.2024.
//

import SwiftUI

final class LoginViewViewModel: ObservableObject {
    private var storageManager = StorageManager.shared
    
    @Published var user = User()
    @Published var userName: String {
        didSet {
            counter = userName.count
        }
    }
    @Published var isLoggedIn: Bool
    var counter = 0
    
    init() {
        let user = storageManager.loadUser()
        userName = user.name
        isLoggedIn = user.isLoggedIn
        counter = userName.count
    }
    
    var isNameValid: Bool {
        userName.count >= 3
    }
    
    func login() {
        isLoggedIn.toggle()
        storageManager.saveUser(user: User(name: userName, isLoggedIn: true))
    }
    
    func logout() {
        userName = ""
        isLoggedIn.toggle()
        storageManager.deleteUser()
    }
}


