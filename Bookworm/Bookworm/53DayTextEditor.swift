//
//  53DayTextEditor.swift
//  Bookworm
//
//  Created by Ваня Науменко on 13.03.24.
//

import SwiftUI

struct _3DayTextEditor: View {
    @State private var rememberMe = false
    @AppStorage("notes") private var notes = ""
    var body: some View { NavigationStack {
        TextField("Enter you text", text: $notes, axis: .vertical)
            .textFieldStyle(.roundedBorder)
            .navigationTitle("Notes")
            .border(Color.black)
            .padding()
    }
    VStack {
        FiftyThirdDayOfHomework(title: "Remember Me", isOn: $rememberMe)
        Text(rememberMe ? "On" : "Off")
    }

    .padding()
    }
}

#Preview {
    _3DayTextEditor()
}
