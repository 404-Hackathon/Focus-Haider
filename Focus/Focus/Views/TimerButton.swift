//
//  Timer.swift
//  Focus
//
//  Created by Haider Alboloushi on 05/05/2021.
//

import SwiftUI

struct TimerButton: View {
    
    let text: String
    let color: Color
    
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .padding(.vertical, 20)
            .padding(.horizontal, 90)
            .background(color)
            .cornerRadius(10)
    }
}

struct TimerButton_Previews: PreviewProvider {
    static var previews: some View {
        TimerButton(text: "Hello", color: Color.blue)
    }
}
