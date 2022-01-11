//
//  PostHeader.swift
//  QuasiTwitter
//
//  Created by Сергей Павленок on 26.12.2021.
//

import SwiftUI

struct PostHeader: View {
    var postDate: String
    var username: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            // TODO: Implement updating photo when backed will be able to store user avatars.
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 40, height: 40)
            
            VStack(alignment: .leading, spacing: 0) {
                
                Text(username)
                    .customized(style: .body())
                
                Text(postDate)
                    .customized(style: .caption(color: .gray))
            }
            .padding(.leading, Grid.grid16)
        }
        .padding(.leading, Grid.grid16)
    }
}

struct PostHeader_Previews: PreviewProvider {
    static var previews: some View {
        PostHeader(postDate: "25 Октября 2021 13:00", username: "TestUser")
    }
}
