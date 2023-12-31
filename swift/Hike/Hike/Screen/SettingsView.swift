//
//  SettingsView.swift
//  Hike
//
//  Created by John Rey on 10/10/23.
//

import SwiftUI

struct SettingsView: View {
	private let settings = SettingsManager()
	
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
			
			Section(
				content: {
					ScrollView(
						.horizontal,
						showsIndicators: false,
						content: {
							HStack {
								ForEach(settings.appIcons.indices, id: \.self) {
									item in
									
									let iconName = settings.appIcons[ item ]
									
									Button {
										UIApplication.shared.setAlternateIconName(iconName) {
											error in
											
											if error != nil {
												print(String(describing: error?.localizedDescription))
											} else {
												print("Success")
											}
										}
									} label: {
										Image("\(iconName)-Preview")
											.resizable()
											.scaledToFit()
											.frame(
												width: 80,
												height: 80
											)
											.cornerRadius(16)
									}.buttonStyle(.borderless)
								}
							}
						}
					).padding(.top, 12)
					
					Text("Choose your favourite app icon from the collection above")
						.frame(
							minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,
							maxWidth: .infinity
						)
						.multilineTextAlignment(.center)
						.foregroundColor(.secondary)
						.font(.footnote)
						.padding(.bottom, 12)
				},
				header: {
					Text("Alternate Icons")
				}
			)

			
			Section(
				content: {
					ForEach(settings.appDetails) {
						item in
						
						CustomListRowView(
							rowLabel: item.label,
							rowIcon: item.icon,
							rowContent: item.content,
							rowTintColor: item.tintColor,
							rowLinkLabel: item.linkLabel,
							rowLinkDestination: item.linkDestination
						)
					}
				}, header: {
					Text("About the App")
						.fontWeight(.medium)
				}, footer: {
					HStack {
						Spacer()
						
						Text("Copyright © All right reserved.")
						
						Spacer()
					}.padding(.top, 8)
				}
			)
		}
    }
}

#Preview {
    SettingsView()
}
