//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Дарья Кобелева on 22.04.2024.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    private let contentViewVM = ContentViewViewModel()
    
    var body: some View {
        VStack {
            Text("Hi, \(loginViewVM.userName)")
                .font(.title)
                .padding(.top, 100)
            Text(contentViewVM.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            
            ButtonView(
                action: contentViewVM.startTimer,
                text: contentViewVM.buttonTittle,
                colorButton: .red
            )
            .padding(.top, 60)
            Spacer()
            
            ButtonView(
                action: loginViewVM.logout,
                text: "LogOut",
                colorButton: .blue
            )
            .padding(.bottom, 24)
        }
        Spacer()
    }
}

#Preview {
    ContentView()
        .environmentObject(LoginViewViewModel())
}


