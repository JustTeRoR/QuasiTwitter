//
//  QuasiTwitterApp.swift
//  QuasiTwitter
//
//  Created by Сергей Павленок on 14.11.2021.
//

import SwiftUI
//import Firebase

@main
struct QuasiTwitterApp: App {
    
    // @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView().onAppear {
                // FirebaseApp.configure()
            }
        }
    }
    
//    class AppDelegate: NSObject, UIApplicationDelegate {
//        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//            FirebaseApp.configure()
//            return true
//        }
//    }
}
