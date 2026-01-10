//
//  SwipeToDelete.swift
//  CustomListRows
//
//  Created by Vanshika Pal on 09/01/26.
//

import SwiftUI

struct SwipeToDelete: View {
    @State private var books: [Book] = DataModel.books
    var body: some View {
        List {
            ForEach(books) { book in
                BookRowView(book: book)
            }
            .onDelete(perform: delete)
        }
    }
    func delete(offsets: IndexSet) {
        books.remove(atOffsets: offsets)
    }
}

#Preview {
    SwipeToDelete()
}
