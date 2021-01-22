//
//  ProfileModel.swift
//  CodegramUI
//
//  Created by Jorge Giannotta on 22/01/21.
//

import SwiftUI

struct Profile : Identifiable {
    var id = UUID()
    var images : [String]
    var profileImage : String
    var name : String
    var realName : String
    var description : [String]
}
