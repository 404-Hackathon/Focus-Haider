//
//  ContentView.swift
//  Focus
//
//  Created by Haider Alboloushi on 02/05/2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var timerManager = StopWatchStart()
    var body: some View {
        VStack {
            Spacer()
            Text("FOCUS")
                .font(.largeTitle)
                .bold()
            Spacer()
            HStack {
                Text(String(format: "%.f", timerManager.minutes))
                    .font(.largeTitle)
                    .bold()
                Text(":")
                    .font(.largeTitle)
                    .bold()
                Text(String(format: "%.f", timerManager.secondsPassed))
                    .font(.largeTitle)
                    .bold()
            }
            Spacer()
            if timerManager.mode == .stopped {
                Button(action: {self.timerManager.start()}) {
                    TimerButton(text: "Start", color: Color.blue)
                }
            } else if timerManager.mode == .started {
                Button(action: {self.timerManager.pause()}) {
                    TimerButton(text: "Pause", color: Color.blue)
                }
                Button(action: {self.timerManager.stop()}) {
                    TimerButton(text: "Stop", color: Color.red)
                }
            } else if timerManager.mode == .paused {
                Button(action: {self.timerManager.start()}) {
                    TimerButton(text: "Start", color: Color.blue)
                }
                Button(action: {self.timerManager.stop()}) {
                    TimerButton(text: "Stop", color: Color.red)
                }
            }
            Spacer()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
