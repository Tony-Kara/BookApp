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
    
}
