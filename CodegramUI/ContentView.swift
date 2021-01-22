//
//  ContentView.swift
//  CodegramUI
//
//  Created by Jorge Giannotta on 21/01/21.
//

import SwiftUI

struct ContentView: View {
    
    var posty : [Post] = postsData
    
    var body: some View {
        VStack(alignment: .center, spacing: 0, content: {
            NavbarView()
//                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                .padding(.horizontal)
            Divider()
                .padding(.vertical)
            ScrollView(.vertical, showsIndicators: false, content: {
                
                ForEach(posty) { item in
                    PostItemView(post: item)
                }//: Loop
                
            })//: ScrollView
            
            Spacer()
        })//: VStack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
