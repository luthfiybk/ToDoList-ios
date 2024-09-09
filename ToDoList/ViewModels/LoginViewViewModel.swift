//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Luthfi Arya M on 08/08/24.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login() {
        guard validate() else {
            return
        }
        
        // Try log in
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please fill all fields!"
            
            return false
        }
        
        //email@foo.com
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Invalid email format"
            return false
        }
        
        return true
    }
}
