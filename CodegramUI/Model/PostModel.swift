//
//  PostModel.swift
//  CodegramUI
//
//  Created by Jorge Giannotta on 21/01/21.
//

import SwiftUI

struct Post : Identifiable {
    var id = UUID()
    var image : String
    var profileImage : String
    var name : String
    var caption : String
    var like : String
    var location : String
    var realName : String
}
