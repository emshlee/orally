//
//  UserInfo.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-15.
//

import Foundation
    
class UserInfo: Identifiable {
    var id: String = UUID().uuidString
    var userName: String
    var age: Int
    var gender: String
    var sex: String
        
    init(userName: String, age: Int, gender: String, sex: String) {
        self.userName = userName
        self.age = age
        self.gender = gender
        self.sex = sex
        }
    
//    func updateCompletion() -> UserInfo {
//        return UserInfo(userName: userName, age: age, gender: gender, sex: sex)
//    }
}
