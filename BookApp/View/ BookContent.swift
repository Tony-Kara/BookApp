//
//   BookContent.swift
//  BookApp
//
//  Created by mac on 9/26/21.
//

import SwiftUI

struct BookContent: View {
    @EnvironmentObject var model: BookModel
    var book: Book
    @State private var page = 0
    var body: some View {
        
       
        TabView(selection: $page){
            
            ForEach(0..<book.content.count, id: \.self){ index in
               VStack{
                    
                    Text(book.content[index])
                        .tag(index)
                Spacer()
                Text("\(page + 1)")
                }
                
            }
            .padding()
        
        }
        // use this to add scrolling effects on the tabview
        .tabViewStyle(PageTabViewStyle())
        // this ensures the dot ... to signify that this view is scrollable nevers appears
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
        .onChange(of: page, perform: { value in
            model.updatePage(forId: book.id, page: page)
        })
        .onAppear {
            page = book.currentPage
        }
     
            
                  
                
                
           
            
       
    }
}

struct BookContent_Previews: PreviewProvider {
    static var previews: some View {
        BookContent(book: Book())
            .environmentObject(BookModel())
    }
}
