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
				LazyHStack(
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
	AnimalGalleryView(animal: TestAnimalData)
}
