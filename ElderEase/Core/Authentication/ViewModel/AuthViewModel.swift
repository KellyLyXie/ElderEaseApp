//
//  AuthViewModel.swift
//  ElderEase
//
//  Created by 谢璐阳 on 6/6/24.
//

import Foundation
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    init() {
        
    }
    func signIn(withEmail email: String, password: String) async throws {
        print("Sign in..")
    }
    func createUser(withEmail email: String, password: String, fullname: String) async throws {
        print("Create user")
    }
    func signOut() {
        
    }
    func deleteAccount() {
        
    }
    func fetchUser() async {
        
    }
}
