//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Vanshika Pal on 10/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Student")
                .font(.title)
            StudentView(currentStudent: Student(firstName: "Vanshika", lastName: "pal", age: 20))
            StudentView(currentStudent: Student(firstName: "Krishna", lastName: "Pal", age: 15))
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
