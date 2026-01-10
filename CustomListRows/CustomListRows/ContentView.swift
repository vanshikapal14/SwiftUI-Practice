//
//  ContentView.swift
//  CustomListRows
//
//  Created by Probeer on 08/01/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var books: [Book] =  DataModel.books
    
    @State private var searchText = ""
    
    @State private var genreSelected: Genre =
        .all
    
    
    var filteredBooks: [Book] {
        books.filter { book in
            let searchMatches = searchText.isEmpty ||  book.name.localizedStandardContains(searchText) || book.author.localizedStandardContains(searchText)
            
            let genreMatches = genreSelected == .all || book.genre == genreSelected
            
            return searchMatches && genreMatches
        }
    }
    var body: some View {
        TextField("Search by book or author name", text: $searchText)
            .padding()
            .textFieldStyle(.roundedBorder)
        
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(Genre.allCases, id: \.self){ genre in
                    Button {
                        genreSelected = genre
                    } label: {
                        Text(genre.rawValue)
                    }
                    .buttonStyle(
                        .borderedProminent
                    )
                    .tint(genreSelected == genre ? .blue : .gray)
                    
                }
            }
            .padding()
        }
        List {
            ForEach(filteredBooks) { book in
                BookRowView(book: book)
            }
        }
    }
}

#Preview {
    ContentView()
}
