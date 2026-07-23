//
//  Validator.swift
//  LoginApp
//
//  Created by Monikanta Dutta on 22/07/26.
//

import Foundation

class Validator {

    static func validate(email: String,
                         password: String) -> String? {

        if email.isEmpty {
            return "Email cannot be empty."
        }

        if password.isEmpty {
            return "Password cannot be empty."
        }

        return nil
    }

}
