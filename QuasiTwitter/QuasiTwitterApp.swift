//
//  QuasiTwitterApp.swift
//  QuasiTwitter
//
//  Created by Сергей Павленок on 14.11.2021.
//

import SwiftUI
import Firebase

@main
struct QuasiTwitterApp: App {
    
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate
     // let onboardingContentManager = OnboardingContentManagerImpl(manager: PlistManagerImpl())
    var body: some Scene {
        WindowGroup {
            ContentView()
            // OnboardingWrapper(manager: onboardingContentManager) {}
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
