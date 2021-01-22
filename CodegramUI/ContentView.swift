//
//  ContentView.swift
//  CodegramUI
//
//  Created by Jorge Giannotta on 21/01/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        TabView {
            
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Feed")
                }//: TabItem
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }//: TabItem
            
        }//: TabView
        .edgesIgnoringSafeArea(.top)
        .accentColor(Color.primary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
