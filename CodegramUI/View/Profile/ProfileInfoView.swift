//
//  ProfileInfoView.swift
//  CodegramUI
//
//  Created by Jorge Giannotta on 22/01/21.
//

import SwiftUI

struct ProfileInfoView: View {
    
    var profile : Profile
    
    var body: some View {
        VStack(alignment: .center, spacing: 0, content: {
            HStack(alignment: .center, spacing: 0, content: {
                Image(profile.profileImage)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 100, height: 100, alignment: .center)
                    .padding()
                
                Spacer()
                
                VStack(alignment: .center, spacing: 0, content: {
                    Text("333").fontWeight(.bold)
                    Text("post")
                })
                
                Spacer()
                
                VStack(alignment: .center, spacing: 0, content: {
                    Text("333").fontWeight(.bold)
                    Text("follower")
                })
                
                Spacer()
                
                VStack(alignment: .center, spacing: 0, content: {
                    Text("333").fontWeight(.bold)
                    Text("following")
                })
                
                Spacer()
            })
            
            HStack(alignment: .center, spacing: 0, content: {
                
                VStack(alignment: .center, spacing: 0, content: {
                    HStack {
                        Text(profile.realName)
                            .fontWeight(.semibold)
                        Spacer()
                    }
                    ForEach(profile.description, id: \.self) { item in
                        HStack {
                            Text(item).multilineTextAlignment(.leading)
                            Spacer()
                        }
                    }
                    
                })
                .padding(.horizontal)
                
                Spacer()
                
            })
            
        })
    }
}

struct ProfileInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileInfoView(profile: profilesData[0])
    }
}
