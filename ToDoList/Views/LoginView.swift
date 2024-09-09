//
//  LoginView.swift
//  ToDoList
//
//  Created by Luthfi Arya M on 08/08/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "To Do List",
                           subtitle: "Get things done",
                           angle: 15,
                           background: Color.pink)
                
                // Login Form
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log in", background: .blue) {
                        viewModel.login()
                    }
                }
                .offset(y: -50)
                
                // Footer
                VStack {
                    Text("Dont have any account?")
                    
                    NavigationLink("Create an account",
                                    destination: RegisterView())
                    .foregroundColor(Color.blue)
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
