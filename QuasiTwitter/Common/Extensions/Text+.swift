//
//  Text+.swift
//  QuasiTwitter
//
//  Created by Сергей Павленок on 05.12.2021.
//

import Foundation
import SwiftUI

extension Text {
    func customized(style: FontStyle) -> some View {
        self
            .tracking(style.letterSpace)
            .font(style.appFont.font)
            .multilineTextAlignment(style.alignment)
            .foregroundColor(style.color)
            .lineLimit(style.numberOfLines)
            .lineSpacing(style.lineHeight - style.appFont.lineHeight)
            .padding(.vertical, (style.lineHeight - style.appFont.lineHeight) / 2)
            .fixedSize(horizontal: false, vertical: true)
    }
}
