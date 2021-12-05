//
//  AuthView.swift
//  QuasiTwitter
//
//  Created by Сергей Павленок on 05.12.2021.
//

import SwiftUI

struct AuthView: View {
    @Binding var email: String
    @Binding var password: String
    // TODO: разделить байндинги для разных разные
    var body: some View {
        VStack {
            Text("Войти")
                .customized(style: .largeTitle())
                .padding(.bottom, Grid.grid16)
            
            Group {
                TextField("email...", text: $email)
                    .customized(style: .body(alignment: .leading))
                    .padding(.leading, Grid.grid10)
                    .frame(height: 52)
                    .border(.black, width: 2)
                
                SecureField("password...", text: $password)
                    .padding(.leading, Grid.grid10)
                    .frame(height: 52)
                    .border(.black, width: 2)
            }
            .padding(.horizontal, Grid.grid32)
            
            AppButton(title: "Войти") {
                
            }
            .padding(.horizontal, Grid.grid32)
            .padding(.top, Grid.grid16)
            
            Divider()
                .padding(.vertical, Grid.grid32)
            
            Text("Cоздать аккаунт")
                .customized(style: .largeTitle())
                .padding(.bottom, Grid.grid16)
            
            Group {
                TextField("email...", text: $email)
                    .customized(style: .body(alignment: .leading))
                    .padding(.leading, Grid.grid10)
                    .frame(height: 52)
                    .border(.black, width: 2)
                
                SecureField("password...", text: $password)
                    .padding(.leading, Grid.grid10)
                    .frame(height: 52)
                    .border(.black, width: 2)
            }
            .padding(.horizontal, Grid.grid32)
           
            AppButton(title: "Cоздать аккаунт") {
                
            }
            .padding(.horizontal, Grid.grid32)
            .padding(.top, Grid.grid16)
        }
    }
}

struct AuthView_Previews: PreviewProvider {
    @State static var email: String = "john_appleseed@gmail.com"
    @State static var password: String = "john_appleseed"
    
    static var previews: some View {
        AuthView(email: $email, password: $password)
    }
}
