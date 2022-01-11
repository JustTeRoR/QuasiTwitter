//
//  QuasiTwitterApp.swift
//  QuasiTwitter
//
//  Created by Сергей Павленок on 14.11.2021.
//

import SwiftUI

@main
struct QuasiTwitterApp: App {
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding = false
    let onboardingContentManager = OnboardingContentManagerImpl(manager: PlistManagerImpl())
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                if !hasSeenOnboarding {
                    OnboardingWrapper(manager: onboardingContentManager) {
                        hasSeenOnboarding = true
                    }
                } else {
                    TabbarScreen()
                }
            }
        }
    }
}
