//
//  ProfileView.swift
//  CodegramUI
//
//  Created by Jorge Giannotta on 22/01/21.
//

import SwiftUI

struct ProfileView: View {
    
    var profiles : [Profile] = profilesData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0, content: {
            HeaderView(profile: profiles[0])
                .padding(.vertical)
            
            Divider()
            
            ProfileInfoView(profile: profiles[0])
            
            Divider()
            
            PicGridView(profile: profiles[0])
            
            Spacer()
        })
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
