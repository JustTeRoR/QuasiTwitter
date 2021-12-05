//
//  TextField+.swift
//  QuasiTwitter
//
//  Created by Сергей Павленок on 05.12.2021.
//

import SwiftUI
extension TextField {
    func customized(style: FontStyle) -> some View {
        self
            .font(style.appFont.font)
            .multilineTextAlignment(style.alignment)
            .foregroundColor(style.color)
    }
}
