//
//  Book.swift
//  BookApp
//
//  Created by mac on 9/26/21.
//

import Foundation

class Book: Decodable {
    
    var title : String
    var author : String
    var isFavourite: Bool
    var currentPage: Int
    var rating: Int
    var id: Int
    var content: [String]
}
