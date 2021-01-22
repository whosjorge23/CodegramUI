//
//  PicGridView.swift
//  CodegramUI
//
//  Created by Jorge Giannotta on 22/01/21.
//

import SwiftUI

struct PicGridView: View {
    
    var profile : Profile
    
    let gridLayout : [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(alignment: .center, spacing: 30) {
                
                //MARK: - GRID
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                    ForEach(profile.images, id: \.self) { item in
                        Image(item)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 130, height: 130, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }//:Loop
                }//: LazyVGrid
            }//:VStack
            .padding(.horizontal, 10)
            .padding(.vertical, 50)
        }//: ScrollView
    }
}

struct PicGridView_Previews: PreviewProvider {
    static var previews: some View {
        PicGridView(profile: profilesData[0])
    }
}
