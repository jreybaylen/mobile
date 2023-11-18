//
//  ImageWithDescriptionView.swift
//  Africa
//
//  Created by John Rey on 11/18/23.
//

import SwiftUI

struct ImageWithDescriptionView: View {
	
	let image: String
	let title: String
	let description: String
	
	var body: some View {
		HStack(
			alignment: .top,
			spacing: 16,
			content: {
				Image(image)
					.resizable()
					.scaledToFill()
					.frame(
						width: 90,
						height: 90
					)
					.clipShape(RoundedRectangle(cornerRadius: 8))
				
				VStack(
					alignment: .leading,
					spacing: 8,
					content: {
						Text(title.capitalized)
							.foregroundColor(.accentColor)
							.font(.title2)
							.bold()
						
						Text(description)
							.lineLimit(3)
							.multilineTextAlignment(.leading)
							.font(.footnote)
					}
				)
				
				Spacer()
			}
		).padding(
			EdgeInsets(
				top: 0,
				leading: 12,
				bottom: 12,
				trailing: 0
			)
		)
	}
	
}

#Preview {
    ImageWithDescriptionView(
		image: "lion",
		title: "Lion",
		description: "This is lion"
	)
}
