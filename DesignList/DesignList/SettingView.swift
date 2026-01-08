//
//  SettingView.swift
//  DesignList
//
//  Created by Vanshika Pal on 08/01/26.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    HStack(spacing: 10) {
                        Image(systemName: "apple.logo")
                            .font(.largeTitle)
                        VStack(alignment: .leading) {
                            Text("Apple Account")
                                .bold()
                            Text("Sign in to access your iCLoud data, the Appp Store, Apple Services and more.")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.gray)
                    }
                }
                Section {
                    HStack(spacing: 10) {
                        Image(systemName: "gear")
                        Text("General")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.gray)
                    }
                    HStack(spacing: 10) {
                        Image(systemName: "figure")
                        Text("Accessibility")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.gray)
                    }
                    HStack(spacing: 10) {
                        Image(systemName: "figure")
                        Text("Action Button")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.gray)
                    }
                    HStack(spacing: 10) {
                        Image(systemName: "apple.intelligence")
                        Text("Apple Intelligence & Siri")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.gray)
                    }
                    HStack(spacing: 10) {
                        Image(systemName: "camera")
                        Text("Camera")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.gray)
                    }
                    HStack(spacing: 10) {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundStyle(.gray)
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    SettingView()
}
