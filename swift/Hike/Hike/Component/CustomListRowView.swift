//
//  CustomListRowView.swift
//  Hike
//
//  Created by John Rey on 10/11/23.
//

import SwiftUI

struct CustomListRowView: View {
	@State var rowLabel: String
	@State var rowIcon: String
	@State var rowContent: String?
	@State var rowTintColor: Color
	@State var rowLinkLabel: String?
	@State var rowLinkDestination: String?
	
    var body: some View {
		LabeledContent {
			if let linkLabel = rowLinkLabel,
			   let linkDestination = rowLinkDestination {
				Link(
					destination: URL(string: linkDestination)!,
					label: {
						Text(linkLabel)
							.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
							.fontWeight(.heavy)
					}
				)
			}
			
			if let normalLabel = rowContent {
				Text(normalLabel)
					.foregroundColor(.primary)
					.fontWeight(.heavy)
			}
		} label: {
			HStack {
				ZStack {
					RoundedRectangle(cornerRadius: 8)
						.frame(
							width: 30,
							height: 30
						)
						.foregroundColor(rowTintColor)
					
					Image(systemName: rowIcon)
						.foregroundColor(.white)
						.fontWeight(.semibold)
				}
				
				Text(rowLabel)
			}
		}
    }
}

#Preview {
	List {
		CustomListRowView(
			rowLabel: "Application",
			rowIcon: "apps.iphone",
			rowContent: "Hike",
			rowTintColor: .blue
		)
	}
}
