//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Дарья Кобелева on 24.04.2024.
//

import SwiftUI

final class StorageManager: ObservableObject {
    static let shared = StorageManager()
    
    @AppStorage(wrappedValue: "", "name") var userName: String
    @AppStorage("isLoggedIn") var isLoggedIn = false
    
    private init() {}
    
    func saveUser(user: User) {
        userName = user.name
        isLoggedIn = user.isLoggedIn
    }
    
    func loadUser() -> User {
        User(name: userName, isLoggedIn: isLoggedIn)
    }
    
    func deleteUser() {
        UserDefaults.standard.removeObject(forKey: "username")
        UserDefaults.standard.removeObject(forKey: "isLoggedIn")
    }
}
