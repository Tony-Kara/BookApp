//
//  Staging.swift
//  BookApp
//
//  Created by mac on 9/26/21.
//

import SwiftUI

struct Staging: View {
    var book: Book
    @EnvironmentObject var model:BookModel
    @State private var rating = 2
    var body: some View {
        
        
        
        VStack(spacing: 20){
            
            NavigationLink(destination: BookContent(book: book)){
                
                VStack {
                    Text("Read Now!")
                        .font(.title)
                        .accentColor(.black)
                    
                    Image("cover\(book.id)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                       // .frame(width: 250, height: 350, alignment: .center)
                }
                .padding()
           
            }
           
       
        Text("Mark for later")
            .font(.headline)
                
            Button(action: { model.updateFavourite(forId: book.id) }) {
                Image(systemName: book.isFavourite ? "star.fill" : "star")
                    .resizable()
                    .frame(width: 28, height: 28)
            }
            .accentColor(.yellow)
            
            Spacer()
            
            Text("Rate \(book.title)")
                .font(.headline)
            
            Picker("Rate this book!", selection: $rating) {
                ForEach(1..<6){ index in
                    Text("\(index)").tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding([.leading, .trailing, .bottom], 60)
            .onChange(of: rating, perform: { value in
                model.updateRating(forId: book.id, rating: rating)
            })
            
        }
        .onAppear{
            rating = book.rating
        }
       .navigationTitle("\(book.title)")
    }
}

struct Staging_Previews: PreviewProvider {
    static var previews: some View {
        
        Staging(book: Book())
            .environmentObject(BookModel())// able to directly create an instance of Book() here as i added a value to all the properties present in the model.
    }
}
