//
//  Customized.swift
//  QuasiTwitter
//
//  Created by Сергей Павленок on 05.12.2021.
//

import Foundation
import SwiftUI

struct FontStyle {
    public let appFont: AppFont
    public let letterSpace: CGFloat
    public let lineHeight: CGFloat
    public let color: Color
    public let alignment: TextAlignment
    public let numberOfLines: Int?
    
    public init(appFont: AppFont, color: Color, alignment: TextAlignment, lineHeight: CGFloat, letterSpace: CGFloat, numberOfLines: Int? = nil) {
        self.appFont = appFont
        self.letterSpace = letterSpace
        self.lineHeight = lineHeight
        self.color = color
        self.alignment = alignment
        self.numberOfLines = numberOfLines
    }
}
