//
//  ContentView.swift
//  DesignList
//
//  Created by Vanshika Pal on 08/01/26.
//

import SwiftUI

struct Book: Identifiable {
    var id = UUID()
    var name: String
}

struct BookColleection: Identifiable {
    let id = UUID()
    var name: String
    var description: String
    var books: [Book]
}
struct ContentView: View {
    var bookCollections = [BookColleection(
                           name: "Mytery Books",
                           description: "Curate Collection of mystery books",
                           books:
                            [Book(name: "The Hobbit"),
                             Book(name: "The Alchemist"),
                             Book(name: "1984")]),
                           
                           BookColleection(
                            name: "Sci Fi Books",
                            description: "The Best SciFi books",
                            books: [Book(name: "Alien"),
                                   Book(name: "The Odyssey"),
                                   Book(name: "Interstellar"),
                                   Book(name: "I, Robot")])
    ]
//    @State private var mysteryBooks = [Book(name: "The Haitate"),
//                                       Book(name: "Harry Potter")]
//    
//    @State private var newName = ""
    
    var body: some View {
        
        List {
            ForEach(bookCollections) { collection in
                Section {
                    ForEach(collection.books) { book in
                        Text(book.name)
                    }
                } header: {
                    Text(collection.name)
                        .foregroundStyle(.black)
                        .font(.title)
                        .bold()
                } footer: {
                    Text(collection.description)
                }
            }
        }
        
//        TextField("Add a Name", text: $newName)
//            .padding()
//            .onSubmit {
//                names.append(Name(name: newName))
//            }
    }
}

#Preview {
    ContentView()
}
