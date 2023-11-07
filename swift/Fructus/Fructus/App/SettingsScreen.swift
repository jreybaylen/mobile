//
//  SettingsScreen.swift
//  Fructus
//
//  Created by John Rey on 11/7/23.
//

import SwiftUI

struct SettingsScreen: View {
	@Environment(\.dismiss) var settingsPresentationMode
	
    var body: some View {
		NavigationView(content: {
			VStack(content: {
				GroupBox(
					content: {
						Divider()
							.padding(.bottom, 5)
						
						HStack(
							alignment: .top,
							spacing: 10,
							content: {
								Image("logo")
									.resizable()
									.scaledToFit()
									.clipShape(RoundedRectangle(cornerRadius: 9))
									.frame(
										width: 80,
										height: 80
									)
								
								Text("Most fruits are naturaly low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary, vitamins, and much more.")
									.font(.footnote)
							}
						)
					},
					label: {
						HStack {
							Text("Fructus")
							
							Spacer()
							
							Image(systemName: "info.circle")
						}
					}
				)
				
				Spacer()
			}).padding(20)
				.navigationTitle("Settings")
				.toolbar(content: {
					Button(
						action: {
							settingsPresentationMode()
						}, label: {
							Image(systemName: "xmark")
								.fontWeight(.bold)
						}
					)
				})
		})
    }
}

#Preview {
    SettingsScreen()
}
