//
//  ContentView.swift
//  Light Switch
//
//  Created by Vanshika Pal on 10/12/25.
//

import SwiftUI

struct ContentView: View {
    @State var text: String = "OFF "
    @State var isLightOn: Bool = true
    var body: some View {
        VStack {
            Text("Light is \(isLightOn ? "ON" : "OFF")")
                .font(.largeTitle)
            Button("Swith \(isLightOn ? "OFF" : "ON")") {
                isLightOn.toggle()
            }
            .padding()
            .border(Color.black)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
