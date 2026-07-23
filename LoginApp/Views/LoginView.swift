//
//  Untitled.swift
//  LoginApp
//
//  Created by Monikanta Dutta on 22/07/26.
//

import SwiftUI

struct LoginView: View {

    @StateObject
    private var viewModel = LoginViewModel()

    var body: some View {

        VStack(spacing: 20) {

            Text("Login")
                .font(.largeTitle)
                .bold()

            TextField("Email", text: $viewModel.email)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.emailAddress)
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled()

            SecureField("Password", text: $viewModel.password)
                .textFieldStyle(.roundedBorder)

            Button {

                viewModel.login()

            } label: {

                Text("Login")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)

            }

            NavigationLink {
                RegistrationView()
            } label: {
                Text("New User? Register")
                    .font(.subheadline)
                    .foregroundColor(.blue)
            }

            NavigationLink(
                destination: DashboardView(email: viewModel.email),
                isActive: $viewModel.loginSuccess
            ) {
                EmptyView()
            }

        }
        .padding()
        .navigationTitle("Login")
        .alert(
            "Error",
            isPresented: Binding(
                get: { !viewModel.errorMessage.isEmpty },
                set: { _ in
                    viewModel.errorMessage = ""
                })
        ) {

            Button("OK", role: .cancel) {}

        } message: {

            Text(viewModel.errorMessage)

        }
    }
}

#Preview {
    NavigationStack {
        LoginView()
    }
}
