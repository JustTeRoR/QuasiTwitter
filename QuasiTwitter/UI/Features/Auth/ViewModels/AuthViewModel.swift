//
//  AuthViewModel.swift
//  QuasiTwitter
//
//  Created by Сергей Павленок on 05.12.2021.
//

import Foundation
import FirebaseAuth

class AuthViewModel: ObservableObject {
    
    let auth = Auth.auth()
    
    var isSignedIn: Bool {
        return auth.currentUser != nil
    }
    
    func signIn(email: String, password: String) {
        auth.signIn(withEmail: email, password: password) { result, error in
            guard result != nil, error == nil else {
                // Handle error here.
                return
            }
            // Handle success here.
        }
    }
    
    func signUp(email: String, password: String) {
        
    }
}
