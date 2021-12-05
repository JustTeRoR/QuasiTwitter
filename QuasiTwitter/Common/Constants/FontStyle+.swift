//
//  FontStyle+.swift
//  QuasiTwitter
//
//  Created by Сергей Павленок on 05.12.2021.
//

import SwiftUI

extension FontStyle {
    static func largeTitle(color: Color = .black, alignment: TextAlignment = .center, numberOfLines: Int? = nil) -> FontStyle {
        return FontStyle(appFont: .veryLargeTitle, color: color, alignment: alignment, lineHeight: 47, letterSpace: 0.37, numberOfLines: numberOfLines)
    }
    
    static func boldtitle(color: Color = .black, alignment: TextAlignment = .center, numberOfLines: Int? = nil) -> FontStyle {
        return FontStyle(appFont: .boldTitle, color: color, alignment: alignment, lineHeight: 35, letterSpace: 0.35, numberOfLines: numberOfLines)
    }
    
    static func title(color: Color = .black, alignment: TextAlignment = .center, numberOfLines: Int? = nil) -> FontStyle {
        return FontStyle(appFont: .title, color: color, alignment: alignment, lineHeight: 31, letterSpace: 0.40, numberOfLines: numberOfLines)
    }
    
    static func body(color: Color = .black, alignment: TextAlignment = .leading, numberOfLines: Int? = nil) -> FontStyle {
        return FontStyle(appFont: .body, color: color, alignment: alignment, lineHeight: 25, letterSpace: 0.30, numberOfLines: numberOfLines)
    }
    
    static func smallBody(color: Color = .black, alignment: TextAlignment = .leading, numberOfLines: Int? = nil) -> FontStyle {
        return FontStyle(appFont: .smallBody, color: color, alignment: alignment, lineHeight: 21, letterSpace: 0.30, numberOfLines: numberOfLines)
    }
    
    static func caption(color: Color = .black, alignment: TextAlignment = .leading, numberOfLines: Int? = nil) -> FontStyle {
        return FontStyle(appFont: .caption, color: color, alignment: alignment, lineHeight: 18, letterSpace: 0.27, numberOfLines: numberOfLines)
    }
}
