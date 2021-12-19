//
//  OnboardingWrapper.swift
//  QuasiTwitter
//
//  Created by Сергей Павленок on 19.12.2021.
//

import SwiftUI

struct OnboardingWrapper: View {
    let manager: OnboardingContentManager
    let handler: OnboardingStartedAction
    
    @State private var selected = 0
    
    init(manager: OnboardingContentManager, handler: @escaping OnboardingStartedAction) {
        self.manager = manager
        self.handler = handler
    }
    
    var body: some View {
        TabView(selection: $selected) {
            ForEach(manager.items.indices) { index in
                OnBoardingVIew(item: manager.items[index], limit: manager.limit, index: $selected, handler: handler)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        .onAppear {
            UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(Color.primaryColor)
        }
        
    }
    
}

struct OnboardingWrapper_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingWrapper(manager: OnboardingContentManagerImpl(manager: PlistManagerImpl())) {}
    }
}
