//
//  LoginViewViewModel.swift
//  StateAndDataFlow
//
//  Created by Дарья Кобелева on 22.04.2024.
//

import Foundation

final class LoginViewViewModel: ObservableObject {
    var name = ""
    @Published  var isLoggedIn = false
}
