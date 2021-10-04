//
//  BookModel.swift
//  BookApp
//
//  Created by mac on 9/26/21.
//

import Foundation

class BookModel: ObservableObject {
    
    @Published var bookModel = [Book]()
    
    init(){
        
        self.bookModel =  DataService.getLocalData()
    }
    
    
    
    
    /// Update the specified book's favourite status. Does nothing if `forId` is invalid.
    func updateFavourite(forId: Int) {
        if let index = bookModel.firstIndex(where: { $0.id == forId }) {
            bookModel[index].isFavourite.toggle()
        }
    }
    
    
    /// Update the specified book's rating. Does nothing if `forId` is invalid.
    func updateRating(forId: Int, rating: Int) {
        if let index = bookModel.firstIndex(where: { $0.id == forId }) {
            bookModel[index].rating = rating
        }
    }
    
    
    /// Update the specified book's current page. Does nothing if `forId` is invalid.
    func updatePage(forId: Int, page: Int) {
        if let index = bookModel.firstIndex(where: { $0.id == forId }) {
            bookModel[index].currentPage = page
        }
    }
    
    
}
