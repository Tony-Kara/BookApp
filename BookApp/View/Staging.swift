//
//  Staging.swift
//  BookApp
//
//  Created by mac on 9/26/21.
//

import SwiftUI

struct Staging: View {
    var book: Book
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Staging_Previews: PreviewProvider {
    static var previews: some View {
        
        Staging(book: Book())
    }
}
