//
//  AnimalGalleryView.swift
//  Africa
//
//  Created by John Rey on 11/18/23.
//

import SwiftUI

struct AnimalGalleryView: View {
	
	let animal: Animal
	
    var body: some View {
		ScrollView(
			.horizontal,
			showsIndicators: false,
			content: {
				HStack(
					alignment: .center,
					spacing: 15,
					content: {
						ForEach(
							animal.gallery,
							id: \.self,
							content: {
								image in
								
								Image(image)
									.resizable()
									.scaledToFit()
									.frame(height: 200)
									.clipShape(RoundedRectangle(cornerRadius: 12))
							}
						)
					}
				)
			}
		)
    }
	
}

#Preview {
	AnimalGalleryView(
		animal: Animal(
			id: "lion",
			name: "Lion",
			headline: "The world's most social felines",
			description: "",
			link: "",
			image: "lion",
			gallery: [
				"lion-1",
				"lion-2",
				"lion-3",
				"lion-4"
			],
			fact: []
		 )
	)
}
