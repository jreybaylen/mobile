//
//  SettingsProductInfoItemView.swift
//  Fructus
//
//  Created by John Rey on 11/8/23.
//

import SwiftUI

struct SettingsProductInfoItemView: View {
	
	let setting: Settings
	
    var body: some View {
		HStack {
			Text(setting.category)
				.fontWeight(.light)
			
			Spacer()
			
			if (setting.destination != "") {
				Link(
					destination: URL(string: setting.destination)!,
					label: {
						Text(setting.description)
							.fontWeight(.semibold)
							.foregroundStyle(.blue)
					}
				)
			} else {
				Text(setting.description)
					.fontWeight(.semibold)
			}
		}
    }
}

#Preview {
	VStack {
		SettingsProductInfoItemView(setting: settingsData[0])
	}.padding()
}
