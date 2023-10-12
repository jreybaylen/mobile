//
//  OnboardingView.swift
//  Workbook
//
//  Created by John Rey on 10/12/23.
//

import SwiftUI

struct OnboardingView: View {
	@AppStorage("onboarding") var isOnboardingView: Bool = true
	
    var body: some View {
		VStack {
			Text("Onboarding")
				.font(.title)
			
			Button {
				isOnboardingView.toggle()
			} label: {
				Text("Start")
			}.padding(.top, 20)
		}
    }
}

#Preview {
    OnboardingView()
}
