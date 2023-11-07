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
				SettingsProductDefinitionView()
				
				Section(
					content: {
						GroupBox {
							ForEach(0..<settingsData.count, id: \.self) {
								item in
								
								if (item != 0) {
									Divider()
									 .padding(.vertical, 3)
								}
								
								SettingsProductInfoItemView(setting: settingsData[ item ])
							}
						}
					},
					header: {
						HStack {
							Text("Application".uppercased())
								.fontWeight(.semibold)
								.font(.system(size: 14))
								.foregroundStyle(.gray)
							
							Spacer()
						}.padding(.leading, 15)
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
