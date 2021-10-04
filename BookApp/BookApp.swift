//
//  BookAppApp.swift
//  BookApp
//
//  Created by mac on 9/25/21.
//

import SwiftUI

@main
struct BookApp: App {
    var body: some Scene {
        WindowGroup {
            BookListView()
                .environmentObject(BookModel())
        }
    }
}
