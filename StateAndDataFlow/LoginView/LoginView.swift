//
//  LoginView.swift
//  StateAndDataFlow
//
//  Created by Дарья Кобелева on 22.04.2024.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $loginViewVM.name)
                    .multilineTextAlignment(.center)
                    .onChange(of: loginViewVM.name) {
                        loginViewVM.counter = loginViewVM.name.count
                        loginViewVM.validateUsername()
                    }
                
                Text(loginViewVM.counter.formatted())
                    .foregroundStyle(loginViewVM.isNameValid ? .green : .red)
            }
            .padding(.horizontal, 24)
            
            Button(action: loginViewVM.login) {
                Label("OK", systemImage: "checkmark.circle")
            }
            .disabled(!loginViewVM.isNameValid)
        }
    }
}

#Preview {
    LoginView()
        .environmentObject(LoginViewViewModel())
}
