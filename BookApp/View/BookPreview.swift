//
//  BookPreview.swift
//  BookApp
//
//  Created by mac on 9/26/21.
//

import SwiftUI

struct BookPreview: View {
    var book: Book
    var body: some View {
        ZStack {
            
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(color: .gray, radius: 5, x: -5, y: 5)
                
            
            VStack(alignment: .leading, spacing: 10) {
                Text(book.title)
                    .font(.title)
                    .fontWeight(.bold)
                Text(book.author)
                    .italic()
                Image("cover\(book.id)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .padding()
            
        }
        .accentColor(.black)
    }
}

struct BookPreview_Previews: PreviewProvider {
    static var previews: some View {
        BookPreview(book: Book())
    }
}
