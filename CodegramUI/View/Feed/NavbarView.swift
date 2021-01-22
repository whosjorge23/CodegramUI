//
//  NavbarView.swift
//  CodegramUI
//
//  Created by Jorge Giannotta on 21/01/21.
//

import SwiftUI

struct NavbarView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 0, content: {
            Text("Codegram")
                .font(.title)
                .fontWeight(.semibold)
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "plus.square")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.white)
            })
        })
    }
}

struct NavbarView_Previews: PreviewProvider {
    static var previews: some View {
        NavbarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
