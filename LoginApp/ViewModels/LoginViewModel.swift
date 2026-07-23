//
//  Untitled.swift
//  LoginApp
//
//  Created by Monikanta Dutta on 22/07/26.
//

import Foundation

class LoginViewModel: ObservableObject {

    @Published var email = ""
    @Published var password = ""

    @Published var loginSuccess = false
    @Published var errorMessage = ""

    private let user = User(
        email: "admin@test.com",
        password: "123456"
    )

    func login() {

        if let error = Validator.validate(
            email: email,
            password: password
        ) {
            errorMessage = error
            return
        }

        if email == user.email &&
            password == user.password {

            loginSuccess = true
        } else {

            errorMessage = "Invalid Email or Password"
        }
    }
}
