//
//  OnMoveModifier.swift
//  CustomListRows
//
//  Created by Vanshika Pal on 09/01/26.
//

import SwiftUI

struct OnMoveModifier: View {
    @State private var books: [Book] = DataModel.books
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(books) { book in
                    BookRowView(book: book)
                }
                .onMove(perform: moveItem)
            }
            .toolbar {
                EditButton()
            }
        }
    }
    func moveItem(offsets: IndexSet, destination: Int) {
        books.move(fromOffsets: offsets, toOffset: destination)
    }
}

#Preview {
    OnMoveModifier()
}
