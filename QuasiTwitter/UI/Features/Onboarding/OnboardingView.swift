//
//  OnboardingView.swift
//  QuasiTwitter
//
//  Created by Сергей Павленок on 19.12.2021.
//

import SwiftUI

typealias OnboardingStartedAction = () -> Void

struct OnBoardingVIew: View {
    
    @Environment(\.presentationMode) private var presentationMode
    let item: OnboardingItem
    let limit: Int
    let handler: OnboardingStartedAction
    @Binding var index: Int
    
    internal init(item: OnboardingItem,
                  limit: Int,
                  index: Binding<Int>,
                  handler: @escaping OnboardingStartedAction) {
        self.item = item
        self.limit = limit
        self._index = index
        self.handler = handler
    }
    
    var body: some View {
        VStack {
            Spacer()
            
            AppAnimation(name: item.animation ?? "", loopMode: .loop)

            Text(item.title ?? "")
                .customized(style: .title())
                .padding(.horizontal, Grid.grid32)
                .padding(.bottom, 2)
            
            // TODO: create template in appButtoon for this type of button ??
            Button(action: {
                presentationMode.wrappedValue.dismiss()
                handler()
            }, label: {
                Text("Get started")
            })
            .font(.system(size: 18, weight: .bold))
            .foregroundColor(.white)
            .padding(.horizontal, Grid.grid24)
            .padding(.vertical, Grid.grid10)
            .background(Color.primaryColor)
            .clipShape(Capsule())
            .padding(.top, Grid.grid56)
            .opacity(index == limit ? 1 : 0)
            .allowsHitTesting(index == limit)
            // TODO: To think how to improve hiding of button when we return from the last screen
            .animation(.easeInOut(duration: 0.15))
        }
        .padding(.bottom, Grid.grid144)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingVIew(item: OnboardingItem(title: "Добро пожаловать!", animation: "welcome"),
                       limit: 0, index: .constant(0)) {}
    }
}
