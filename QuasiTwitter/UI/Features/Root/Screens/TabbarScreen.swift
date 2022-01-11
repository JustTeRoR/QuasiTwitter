//
//  TabbarScreen.swift
//  QuasiTwitter
//
//  Created by Сергей Павленок on 11.01.2022.
//

import SwiftUI

struct TabbarScreen: View {
    
    
    var body: some View {
        
        TabView {
            Text("Feed will be here.")
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("Лента")
                }
            Text("Post create screen will be here.")
                .tabItem {
                    Image(systemName: "paperplane")
                    Text("Создать пост")
                }
            Text("Profile screen will be here.")
                .tabItem {
                    Image(systemName: "person")
                    Text("Профиль")
                }
        }
        .accentColor(.primaryColor)
        .toolbar {
            ToolbarItemGroup {
                HStack(alignment: .center) {
                    Image(.appLogo)
                    AppButton(buttonType: .roundLogIn, title: "Войти") {
                        
                    }
                    Text("")
                }
            }
        }
    }
}

struct TabbarScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabbarScreen()
    }
}
