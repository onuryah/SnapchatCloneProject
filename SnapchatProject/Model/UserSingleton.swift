//
//  UserSingleton.swift
//  SnapchatProject
//
//  Created by Ceren Çapar on 27.10.2021.
//

import Foundation

class UserSingleton {
    
    static let sharedUserInfo = UserSingleton()
    
    var email = ""
    var username = ""
    
    private init(){
    }
}
