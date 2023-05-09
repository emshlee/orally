//
//  UserViewModel.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-08.
//

//import Foundation
//
//class UserViewModel: ObservableObject {
//    @Published var user: [User] = [] {
//        didSet {
//            saveUser()
//        }
//    }
//
//    let aUsername: String = "Anonymous"
//
//    init() {
//        getUser()
//    }
//
//    func getUser() {
//        // because data is Optional, we need guard
//        guard
//            let data = UserDefaults.standard.data(forKey: aUsername),
//            let savedUser = try? JSONDecoder().decode([User].self, from: data)
//        else { return }
//
//        self.user = savedUser
//    }
//
//    func saveUser() {
//        if let encodedData = try? JSONEncoder().encode(user) {
//            UserDefaults.standard.set(encodedData, forKey: aUsername)
//        }
//    }
//}
