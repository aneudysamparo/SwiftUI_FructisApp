//
//  FructisApp.swift
//  Fructis
//
//  Created by Aneudys Amparo on 2/1/21.
//

import SwiftUI

@main
struct FructisApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
