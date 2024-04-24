//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Дарья Кобелева on 24.04.2024.
//

import SwiftUI

final class StorageManager: ObservableObject {
    static let shared = StorageManager()
    
    @AppStorage("name") var userName = ""
    @AppStorage("isLoggedIn") var isLoggedIn = false
    
    func saveUser(user: User) {
          userName = user.name
          isLoggedIn = user.isLoggedIn
      }
      
      func loadUser() -> User {
          return User(name: userName, isLoggedIn: isLoggedIn)
      }

      func deleteUser() {
          UserDefaults.standard.removeObject(forKey: "username")
          UserDefaults.standard.removeObject(forKey: "isLoggedIn")
      }
    
    private init() {}
}
