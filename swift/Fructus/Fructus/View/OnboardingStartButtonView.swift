//
//  OnboardingStartButtonView.swift
//  Fructus
//
//  Created by John Rey on 10/25/23.
//

import SwiftUI

struct OnboardingStartButtonView: View {
	@AppStorage("isOnboardingScreen") var isOnboardingScreen: Bool = true
	
    var body: some View {
		Button(
			action: {
				isOnboardingScreen.toggle()
			},
			label: {
				Text("Start".uppercased())
				
				Spacer()
				
				Image(systemName: "arrow.right.circle")
			}
		).foregroundStyle(.white)
			.font(.subheadline)
			.fontWeight(.bold)
			.padding(.vertical, 12)
			.padding(.horizontal, 16)
			.background(Capsule().strokeBorder(
				.white,
				lineWidth: 2
			))
			.frame(width: 120)
    }
}

#Preview {
    OnboardingStartButtonView()
}
