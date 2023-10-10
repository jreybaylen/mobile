//
//  SettingsView.swift
//  Hike
//
//  Created by John Rey on 10/10/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
		List {
			Section {
				HStack {
					Spacer()
					
					Image(systemName: "laurel.leading")
						.font(.system(
							size: 80,
							weight: .black
						))
					
					VStack(spacing: -10, content: {
						Text("Hike")
							.font(.system(
								size: 66,
								weight: .black
							))
						
						Text("Editor's Choice")
							.fontWeight(.medium)
					})
					
					Image(systemName: "laurel.trailing")
						.font(.system(
							size: 80,
							weight: .black
						))
					
					Spacer()
				}
				.foregroundStyle(
					LinearGradient(
						colors: [
							.customGreenLight,
							.customGreenMedium,
							.customGreenDark
						],
						startPoint: .top,
						endPoint: .bottom
					)
				)
				.padding(.top, 8)
				
				VStack(spacing: 8, content: {
					Text("Where can you find \nperfect tracks?")
						.font(.title2)
						.fontWeight(.heavy)
					
					Text("The hike which looks gorgeous in phots but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
						 .font(.footnote)
						 .italic()
					
					Text("Dust off the boots! It's time for a walk.")
						.fontWeight(.heavy)
						.foregroundColor(.customGreenMedium)
				}).padding(.bottom, 16)
					.multilineTextAlignment(.center)
					.frame(maxWidth: .infinity)
			}
			.listRowSeparator(.hidden)
		}
    }
}

#Preview {
    SettingsView()
}
