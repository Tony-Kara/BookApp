//
//  ContentView.swift
//  BookApp
//
//  Created by mac on 9/25/21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: BookModel
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                
                ScrollView {
                    
                    LazyVStack(alignment: .leading, spacing: 30) {
                        
                        ForEach(model.bookModel){ b in
                            
                            NavigationLink(
                                destination: Staging(book: b),
                                label: {
                                    BookPreview(book: b)
                                })
                            
                            
                            
                            NavigationLink(destination: EmptyView()) {
                                EmptyView() }
                        }
                       // .padding(.top)
                        
                    }
                    
                }
                
            }
            .navigationTitle("My library")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(BookModel())
    }
}
