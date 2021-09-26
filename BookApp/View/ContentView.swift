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
                    
                    LazyVStack {
                        
                        ForEach(){
                            
                            NavigationLink(
                                destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                                label: {
                                    /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/
                                })
                        }
                        
                    }
                }
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
