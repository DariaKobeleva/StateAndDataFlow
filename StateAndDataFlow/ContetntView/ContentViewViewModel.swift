//
//  ContentViewViewModel.swift
//  StateAndDataFlow
//
//  Created by Дарья Кобелева on 22.04.2024.
//

import Foundation
import Observation

@Observable
final class ContentViewViewModel {
    var counter = 3
    var buttonTittle = "Start"
    
    private var timer: Timer?
    
    func startTimer() {
        if counter > 0 {
            timer = Timer.scheduledTimer(
                timeInterval: 1,
                target: self,
                selector: #selector(updateCounter),
                userInfo: nil,
                repeats: true
            )
        }
        
        buttonDidTapped()
    }
    
    @objc private func updateCounter() {
        if counter > 0 {
            counter -= 1
        } else {
            killTimer()
            buttonTittle = "Reset"
        }
    }
    
    private func killTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    private func buttonDidTapped() {
        if buttonTittle == "Reset" {
            counter = 3
            buttonTittle = "Start"
        } else {
            buttonTittle = "Wait..."
        }
    }
}

