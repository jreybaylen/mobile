//
//  FructusApp.swift
//  Fructus
//
//  Created by John Rey on 10/20/23.
//

import SwiftUI

@main
struct FructusApp: App {
	@AppStorage("isOnboardingScreen") var isOnboardingScreen = true
	
    var body: some Scene {
        WindowGroup {
			if isOnboardingScreen {
				OnboardingScreen()
			} else {
				FruitsScreen()
			}
        }
    }
}
