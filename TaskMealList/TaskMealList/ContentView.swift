//
//  ContentView.swift
//  TaskMealList
//
//  Created by Vanshika Pal on 08/01/26.
//

import SwiftUI

struct MealName: Identifiable {
    var id = UUID()
    var name: String
}

struct MealCollection: Identifiable {
    var id = UUID()
    var name: String
    var meals: [MealName]
}

struct ContentView: View {
    var mealCollections = [MealCollection(
                          name: "Breakfast",
                          meals:
                            [MealName(name: "Toast"),
                             MealName(name: "Eggs"),
                             MealName(name: "Fruits")]),
                           
                          MealCollection(
                            name: "Lunch",
                            meals: [MealName(name: "Rice"),
                                   MealName(name: "Dal"),
                                   MealName(name: "Vegetables")]),
                          MealCollection(name: "Dinner",
                                         meals: [MealName(name: "Roti"),
                                                MealName(name: "Sabzi"),
                                                MealName(name: "Soup")])]
    
    var body: some View {
        List {
            ForEach(mealCollections) { collection in
                Section {
                    ForEach(collection.meals) { meal in
                        Text(meal.name)
                    }
                } header: {
                    Text(collection.name)
                        .font(.title)
                        .foregroundStyle(.black)
                        .bold()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
