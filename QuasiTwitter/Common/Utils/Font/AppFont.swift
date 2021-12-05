//
//  AppFont.swift
//  QuasiTwitter
//
//  Created by Сергей Павленок on 05.12.2021.
//

import Foundation
import SwiftUI
import UIKit

struct AppFont {
    let font: Font
    let uiFont: UIFont
    let lineHeight: CGFloat
    
    init(uiFont: UIFont) {
        self.uiFont = uiFont
        self.font = Font(uiFont)
        self.lineHeight = uiFont.lineHeight
    }
    
}
