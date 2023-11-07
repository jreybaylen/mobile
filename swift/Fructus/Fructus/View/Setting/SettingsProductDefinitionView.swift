//
//  SettingsProductDefinitionView.swift
//  Fructus
//
//  Created by John Rey on 11/8/23.
//

import SwiftUI

struct SettingsProductDefinitionView: View {
    var body: some View {
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
		).padding(.bottom, 40)
    }
}

#Preview {
    SettingsProductDefinitionView()
}
