//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Дарья Кобелева on 22.04.2024.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    @StateObject private var loginViewVM = LoginViewViewModel()
    
    private var contentViewVM = ContentViewViewModel()
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
        .environmentObject(loginViewVM)
    }
}
