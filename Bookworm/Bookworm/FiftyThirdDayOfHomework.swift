//
//  FiftyThirdDayOfHomework.swift
//  Bookworm
//
//  Created by Ваня Науменко on 11.03.24.
//

import SwiftUI

struct FiftyThirdDayOfHomework: View {
    let title: String
    @Binding var isOn: Bool
    var onColor = [Color.red, Color.yellow]
    var offColor = [Color(white: 0.6), Color(white: 0.4)]
    
    let titleTwo = "Tap agen"
    var onColorTwo = [Color.clear, Color.black]
    var offColorTwo = [Color(white: 0.5), Color(white: 0.8)]
    
    var body: some View {

        Button(title) {
            isOn.toggle()
        }
        .padding()
        .background(LinearGradient(colors: isOn ? onColor: offColor, startPoint: .top, endPoint: .bottom))
        .foregroundStyle(.white)
        .clipShape(.capsule)
        .shadow(radius: isOn ? 0 : 5)
    }
}

#Preview {
    FiftyThirdDayOfHomework(title: "Tap", isOn: .constant(true))
}
