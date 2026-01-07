//
//  ContentView.swift
//  Build Profile Editor
//
//  Created by Vanshika Pal on 07/01/26.
//

import SwiftUI

struct Profile {
    var name: String
    var age: Int
    var isPublic: Bool
    var role: String
}

struct ContentView: View {
    @State private var profile = Profile(
            name: "Alex",
            age: 22,
            isPublic: true,
            role: "Student"
        )

        var body: some View {
            VStack(spacing: 20) {
                Text("Profile Summary")
                    .font(.title)
                    .bold()

                Text("Name: \(profile.name)")
                Text("Age: \(profile.age)")
                Text("Role: \(profile.role)")
                Text(profile.isPublic ? "🌍 Public Profile" : "🔒 Private Profile")

                Divider()

                EditProfileView(profile: $profile)
            }
            .padding()
        }
}

struct EditProfileView: View {
    @Binding var profile: Profile

    let roles = ["Student", "Developer", "Designer", "Manager"]

    var body: some View {
        Form {
            TextField("Name", text: $profile.name)

            Stepper("Age: \(profile.age)", value: $profile.age, in: 1...100)

            Toggle("Public Profile", isOn: $profile.isPublic)

            Picker("Role", selection: $profile.role) {
                ForEach(roles, id: \.self) {
                    Text($0)
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
