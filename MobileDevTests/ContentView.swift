//
//  ContentView.swift
//  MobileDevTests
//
//  Created by Shiddiq Syuhada on 02/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
            Text("Hello, world!")
                .padding()
            NavigationLink(destination: ItemView()){
                Text("Go")
                    .padding()
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
