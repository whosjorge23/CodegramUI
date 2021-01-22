//
//  PostItemView.swift
//  CodegramUI
//
//  Created by Jorge Giannotta on 21/01/21.
//

import SwiftUI

struct PostItemView: View {
    
    var post : Post
    
    @State private var likeisPressed : Bool = false
    @State private var bookmarkisPressed : Bool = false
    
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    var body: some View {
        VStack(alignment: .center, spacing: 0, content: {
            //Header
            HStack(alignment: .center, spacing: 0, content: {
                Image(post.profileImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40, alignment: .center)
                    .clipShape(Circle())
                    .padding(.trailing)
                
                VStack(alignment: .leading, spacing: 0, content: {
                    Text(post.name)
                    Text(post.location)
                })//: VSTACK
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "info.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20, alignment: .center)
                        .foregroundColor(.white)
                })
            })//:HSTACK
            .padding(.horizontal,5)
            .padding(.bottom, 5)
            
            //Image Post
            Button(action: {
                likeisPressed.toggle()
                self.hapticImpact.impactOccurred()
            }, label: {
                Image(post.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, alignment: .center)
            })
            
            
            //Caption Button
            HStack(alignment: .center, spacing: 5, content: {
                
                Button(action: {
                    likeisPressed.toggle()
                    self.hapticImpact.impactOccurred()
                }, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30, alignment: .center)
                        .foregroundColor(likeisPressed ? .red : .white)
                    
                }).padding(.trailing,5)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "square.and.pencil")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30, alignment: .center)
                        .foregroundColor(.white)
                }).padding(.trailing,5)
                
                Button(action: {}, label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30, alignment: .center)
                        .foregroundColor(.white)
                        .rotationEffect(Angle(degrees: 20))
                }).padding(.trailing,5)
                
                Spacer()
                
                Button(action: {
                    bookmarkisPressed.toggle()
                    self.hapticImpact.impactOccurred()
                }, label: {
                    Image(systemName: "bookmark")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30, alignment: .center)
                        .foregroundColor(bookmarkisPressed ? .orange : .white)
                })
                
            })//:HSTACK
            .padding(.horizontal,5)
            .padding(.vertical,10)
            
            //Caption
            VStack(alignment: .center, spacing: 0, content: {
                HStack(alignment: .center, spacing: 0, content: {
                    Text("Likes: \(post.like)")
                    Spacer()
                })//: HSTACK
                .padding(.horizontal,5)
                HStack(alignment: .center, spacing: 0, content: {
                    Text(post.name)
                        .fontWeight(.bold)
                    Text(post.caption)
                        .padding(.leading,5)
                    Spacer()
                })//: HSTACK
                .padding(.horizontal,5)
            })//:VSTACK
            
            
        })//:VSTACK
        .padding(.vertical,5)
    }
}

struct PostItemView_Previews: PreviewProvider {
    static var previews: some View {
        PostItemView(post: postsData[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
