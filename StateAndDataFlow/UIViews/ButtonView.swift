//
//  ButtonView.swift
//  StateAndDataFlow
//
//  Created by Дарья Кобелева on 24.04.2024.
//

import SwiftUI

struct ButtonView: View {
    let action: () -> Void
    let text: String
    let colorButton: Color
    
    var body: some View {
        Button(action: action)  {
            Text(text)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
        }
        .frame(width: 200, height: 60)
        .background(colorButton)
        .clipShape(.rect(cornerRadius: 20))
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
        )
    }
}
