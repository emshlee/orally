//
//  AuthenticationManager.swift
//  Orofacial
//
//  Created by Emma Sihyun Lee on 2023-05-08.
//

import Foundation
import FirebaseAuth

// Local data model to hold data
struct AuthDataResultModel {
    let uid: String
    let email: String? //? means optional
    let photoUrl: String?
    
    init(user: User) {
        // User object comes from FirebaseAuth
        self.uid = user.uid
        self.email = user.email
        self.photoUrl = user.photoURL?.absoluteString
    }
}

final class AuthenticationManager {
    // Singleton
    static let shared = AuthenticationManager()
    private init() { }
    
    func createUser(email: String, password: String) async throws -> AuthDataResultModel {
        let authDataResult = try await Auth.auth().createUser(withEmail: email, password: password)
        return AuthDataResultModel(user: authDataResult.user)
    }
    
    // No async means it's looking for users locally (from local SDK), instead of reaching out to the server
    func getAuthenticatedUser() throws -> AuthDataResultModel {
        guard let user = Auth.auth().currentUser else {
            throw URLError(.badServerResponse)
        }
        
        return AuthDataResultModel(user: user)
    }
    
    func signOut() throws {
        try Auth.auth().signOut()
    }
}
