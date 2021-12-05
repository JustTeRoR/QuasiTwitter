//
//  AuthScreen.swift
//  QuasiTwitter
//
//  Created by Сергей Павленок on 05.12.2021.
//

import SwiftUI

struct AuthViewWrapper: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        AuthView(email: $email, password: $password)
    }
}

struct AuthViewWrapper_Previews: PreviewProvider {
    static var previews: some View {
        AuthViewWrapper()
    }
}
