//
//  LoginView.swift
//  ToDoList
//
//  Created by Viktoriia Vinnykova on 01.05.2025.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // header
                HeaderView(title: "To Do List", subtitle: "get shit done", angle: 15, background: .purple)
                
            // login form
                Form {
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log In", background: .purple) {
                        
                    }
                    .padding()
                }
                .offset(y: -50)
                    
                // create account
                VStack {
                    Text("Don't have an account?")
                    NavigationLink("Create an account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
