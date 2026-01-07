//
//  ContentView.swift
//  Counter
//
//  Created by Vanshika Pal on 10/12/25.
//

import SwiftUI

struct ContentView: View {
    @State var counter: Int = 0    // property wrapper -- allow to change the property 
    var body: some View {
        VStack {
            Text("Counter is \(counter)")
                .font(.largeTitle)
            Button("Increment") {
                counter += 1
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
