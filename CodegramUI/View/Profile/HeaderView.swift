//
//  HeaderView.swift
//  CodegramUI
//
//  Created by Jorge Giannotta on 22/01/21.
//

import SwiftUI

struct HeaderView: View {
    
    var profile : Profile
    
    var body: some View {
        HStack(alignment: .center, spacing: 0, content: {
            Text(profile.name)
                .fontWeight(.heavy)
                .font(.title)
                .padding(.horizontal)
            
            Spacer()
        })
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(profile: profilesData[0])
    }
}
