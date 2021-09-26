//
//  Book.swift
//  BookApp
//
//  Created by mac on 9/26/21.
//

import Foundation

class Book: Decodable, Identifiable {
    
    var title = "Title"
    var author = "Author"
    var isFavourite = false
    var currentPage = 0
    var rating = 2
    var id = 1
    var content = ["I am a test book."]
}
