//
//  Untitled.swift
//  LoginApp
//
//  Created by Monikanta Dutta on 22/07/26.
//

import SwiftUI

struct DashboardView: View {

    let email: String

    @Environment(\.dismiss)
    var dismiss

    var body: some View {

        VStack(spacing: 20) {

            Text("Dashboard")
                .font(.largeTitle)
                .bold()

            Text("Welcome")

            Text(email)
                .font(.title3)

            Button("Logout") {

                dismiss()

            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.red)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .padding()
    }
}
