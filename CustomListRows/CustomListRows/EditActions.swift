//
//  EditActions.swift
//  CustomListRows
//
//  Created by Vanshika Pal on 09/01/26.
//

import SwiftUI

struct EditActions: View {
    
    @State private var books: [Book] = DataModel.books
    var body: some View {
        NavigationStack {
            List($books, editActions: .all) { $book in
                BookRowView(book: book)
            }
            .toolbar {
                EditButton()
            }
        }
    }
}

#Preview {
    EditActions()
}
