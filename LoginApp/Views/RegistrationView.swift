//
//  RegistrationView.swift
//  LoginApp
//
//  Created by Monikanta Dutta on 23/07/26.
//

import SwiftUI

struct RegistrationView: View {

    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""

    @State private var showAlert = false
    @State private var alertMessage = ""

    var body: some View {

        VStack(spacing: 20) {

            Text("Registration")
                .font(.largeTitle)
                .bold()

            TextField("Name", text: $name)
                .textFieldStyle(.roundedBorder)

            TextField("Email", text: $email)
                .textFieldStyle(.roundedBorder)

            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)

            SecureField("Confirm Password", text: $confirmPassword)
                .textFieldStyle(.roundedBorder)

            Button("Register") {

                register()

            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(.green)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))

        }
        .padding()
        .alert(alertMessage,
               isPresented: $showAlert) {

            Button("OK") {}
        }
    }

    func register() {

        if name.isEmpty {

            alertMessage = "Enter Name"

        } else if email.isEmpty {

            alertMessage = "Enter Email"

        } else if password.isEmpty {

            alertMessage = "Enter Password"

        } else if password != confirmPassword {

            alertMessage = "Password doesn't match"

        } else {

            alertMessage = "Registration Successful"

        }

        showAlert = true
    }
}

#Preview {
    RegistrationView()
}
