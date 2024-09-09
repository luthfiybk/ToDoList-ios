//
//  MainViewViewModel.swift
//  ToDoList
//
//  Created by Luthfi Arya M on 08/08/24.
//

import FirebaseAuth
import Foundation

class MainViewViewModel: ObservableObject {
    
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener {_, user in
            DispatchQueue.main.async {
                self.currentUserId = user?.uid ?? ""
            }
        }
    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
