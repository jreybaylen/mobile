//
//  ContentView.swift
//  Workbook
//
//  Created by John Rey on 10/11/23.
//

import SwiftUI

struct ContentView: View {
	@AppStorage("onboarding") var isOnboardingView = true
	
    var body: some View {
		ZStack {
			if (isOnboardingView) {
				OnboardingView()
			} else {
				HomeView()
			}
		}
    }
}

#Preview {
    ContentView()
}
