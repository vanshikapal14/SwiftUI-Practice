//
//  ContentView.swift
//  PlainUI
//
//  Created by Vanshika Pal on 11/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Welcome to Swift UI")
                .font(.title)
                .foregroundStyle(.blue)
                
            Image(systemName: "star.fill")
                .font(.system(size: 50))
                .foregroundColor(.purple)
            Color.blue
                .frame(height: 100)
                .frame(width: 100)
                .clipShape(.capsule)
            Circle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .shadow(radius: 50)
            Button("Tap me!") {}
                .padding()
                .background(.blue.opacity(0.2))
                .cornerRadius(30)
            Text("Text1")
                .padding()
                .background(.blue)
            Text("text2")
                .background(.blue)
                .padding(<#T##insets: EdgeInsets##EdgeInsets#>)
            
        }
    }
}

#Preview {
    ContentView()
}
