//
//  SettingsProductCustomizationView.swift
//  Fructus
//
//  Created by John Rey on 11/8/23.
//

import SwiftUI

struct SettingsProductCustomizationView: View {
	@AppStorage("isOnboardingScreen") var isOnboardingScreen: Bool = false
	
    var body: some View {
		GroupBox(
			content: {
				Divider()
				
				Text("If you wish, you can restart the app by toggle the switch in this box. That way it the onboarding process and you will see the welcome screen again.")
					.padding(.vertical, 8)
					.frame(minHeight: 60)
					.layoutPriority(1)
					.font(.footnote)
					.multilineTextAlignment(.leading)
				
				Toggle(isOn: $isOnboardingScreen) {
					Text("Restart".uppercased())
						.fontWeight(.medium)
						.foregroundStyle(isOnboardingScreen ? .green : .secondary)
				}.padding()
					.background(.white)
					.clipShape(RoundedRectangle(cornerRadius: 8))
			},
			label: {
				HStack {
					Text("Customization".uppercased())
					
					Spacer()
					
					Image(systemName: "paintbrush")
				}
			}
		).padding(.bottom, 20)
    }
}

#Preview {
    SettingsProductCustomizationView()
}
