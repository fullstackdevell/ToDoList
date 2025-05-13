//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Viktoriia Vinnykova on 01.05.2025.
//

import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    init() {}
}
