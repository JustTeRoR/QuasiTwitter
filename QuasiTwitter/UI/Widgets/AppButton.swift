//
//  AppButton.swift
//  QuasiTwitter
//
//  Created by Сергей Павленок on 05.12.2021.
//

import SwiftUI

enum AppButtonType {
    case regular(loading: Bool)
    case roundAction
    case roundLogIn
    case roundedLogout
}

struct AppButton: View {
    let buttonType: AppButtonType
    let title: String
    let icon: String
    let action: () -> Void
    
    init(buttonType: AppButtonType = .regular(loading: false), title: String, icon: String = "", action: @escaping () -> Void) {
        self.buttonType = buttonType
        self.title = title
        self.icon = icon
        self.action = action
    }
    
    private var contentMode: Bool {
        switch buttonType {
        case .regular(let loading):
            if loading {
                return true
            } else {
                return false
            }
        default:
            return false
        }
    }
    
    private var backgroundColor: Color {
        switch buttonType {
        case .regular:
            return .primaryColor
        case .roundAction:
            return .fadedRed
        case .roundLogIn:
            return .brightGreen
        case .roundedLogout:
            return .primaryColor
        }
    }
    
    private var borderColor: Color {
        switch buttonType {
        case .roundLogIn:
            return .brightGreen
        default:
            return .primaryColor
        }
    }
    
    private var cornerRadius: CGFloat {
        switch buttonType {
        case .regular:
            return CornerRadius.cornerRadius8
        default:
            return CornerRadius.cornerRadius24
        }
    }
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: 0) {
                
                Spacer()
                
                if contentMode {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: Color.white))
                        .frame(width: 35, height: 35)
                        .scaleEffect(1.5, anchor: .center)
                        .foregroundColor(.white)
                        .padding(.vertical, Grid.grid16)
                } else {
                    if icon != "" {
                        Image(icon)
                            .renderingMode(.template)
                            .foregroundColor(.white)
                            .padding(.vertical, Grid.grid16)
                    }
                    Text(title)
                        .customized(style: .boldtitle(color: .white))
                        .padding(.vertical, Grid.grid16)
                }
                
                Spacer()
            }
            .background(backgroundColor)
            .overlay(RoundedRectangle(cornerRadius: cornerRadius).stroke(borderColor, lineWidth: 6))
            .cornerRadius(cornerRadius)
        }
    }
}

struct AppButton_Previews: PreviewProvider {
    static var previews: some View {
        AppButton(buttonType: .regular(loading: false), title: "Test") {
            
        }
    }
}
