//
//  RowView.swift
//  CreativeBookList
//
//  Created by Vanshika Pal on 08/01/26.
//

import SwiftUI


struct RowView: View {
    var book: Book
    var body: some View {
        HStack {
            Image(.book)
                .resizable()
                .frame(width: 100, height: 125)
            VStack(alignment: .leading) {
                Text(book.name)
                    .font(.title)
                Text(book.author)
                Text(book.genre.rawValue)
                    .font(.caption)
                    .bold()
                    .foregroundStyle(.white)
                    .padding(5)
                    .background(.black)
                    .clipShape(.capsule)
            }
        }
        
    }
}

#Preview {
    RowView(
            book: Book(
                name: "Sample Book",
                author: "Sample Author",
                genre: .fantasy,
                coverImage: "sampleImage"
            )
        )
}
