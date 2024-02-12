//
//  UserInfo.swift
//  BTKDers2
//
//  Created by Onur Altintas on 28.01.2024.
//

import Foundation
import SwiftUI

struct UserInfo : Identifiable {
    var id = UUID()
    var name: String
    var authority : String
    var tasks : [String]
    
}

let Onur = UserInfo(name: "Onur", authority: "Co Founder", tasks: ["Faladdin", "Binnaz"])
let Ebru = UserInfo(name: "Ebru", authority: "Asistans", tasks: ["Find New Team Member","Find new Home"])

let TeamUsers = [Onur, Ebru]
