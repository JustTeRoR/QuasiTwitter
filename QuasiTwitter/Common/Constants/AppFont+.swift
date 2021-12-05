//
//  AppFont+.swift
//  QuasiTwitter
//
//  Created by Сергей Павленок on 05.12.2021.
//

import UIKit

extension AppFont {
    static let veryLargeTitle = AppFont(uiFont: UIFont.systemFont(ofSize: 48, weight: .bold))
    static let boldTitle = AppFont(uiFont: .systemFont(ofSize: 24, weight: .semibold))
    static let title = AppFont(uiFont: .systemFont(ofSize: 24, weight: .regular))
    static let body = AppFont(uiFont: .systemFont(ofSize: 18, weight: .regular))
    static let smallBody = AppFont(uiFont: .systemFont(ofSize: 14, weight: .regular))
    static let caption = AppFont(uiFont: .systemFont(ofSize: 12, weight: .regular))
}
