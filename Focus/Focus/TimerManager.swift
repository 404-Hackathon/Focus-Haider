//
//  TimerManager.swift
//  Focus
//
//  Created by Haider Alboloushi on 05/05/2021.
//

import SwiftUI

class StopWatchStart: ObservableObject {
    @Published var secondsPassed = 0.0
    @Published var mode: TimerMode = .stopped
    @Published var minutes = 0.0
    var timer = Timer()
    
    func start() {
        mode = .started
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            if self.secondsPassed > 59 {
                self.minutes += 1.0
                self.secondsPassed = 0.0
            } else {
                self.secondsPassed += 0.1
            }
        }
    }
    func stop() {
        timer.invalidate()
        secondsPassed = 0.0
        minutes = 0.0
        mode = .stopped
    }
    func pause() {
        timer.invalidate()
        mode = .paused
    }
}

enum TimerMode {
    case started
    case stopped
    case paused
}
