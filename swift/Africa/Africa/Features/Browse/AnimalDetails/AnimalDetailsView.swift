//
//  AnimalDetailsView.swift
//  Africa
//
//  Created by John Rey on 11/18/23.
//

import SwiftUI

struct AnimalDetailsView: View {
    
	let animal: Animal
	
	var body: some View {
		ScrollView(
			showsIndicators: false,
			content: {
				LazyVStack(
					alignment: .center,
					spacing: 20,
					content: {
						Image(animal.image)
							.resizable()
							.scaledToFit()
						
						Text(animal.name.uppercased())
							.font(.largeTitle)
							.fontWeight(.heavy)
							.multilineTextAlignment(.center)
							.background(Color.accentColor.frame(height: 6).offset(y: 24))
							.padding(
								.vertical,
								8
							)
						
						Text(animal.headline)
							.font(.headline)
							.multilineTextAlignment(.leading)
							.foregroundColor(.accentColor)
							.padding(.horizontal)
						
						Group(content: {
							IconWithLabel(
								icon: "photo.on.rectangle",
								label: "Wilderness in Pictures"
							)
							
							AnimalGalleryView(animal: animal)
						}).padding(.horizontal)
					}
				).navigationTitle("The \(animal.name)")
					.navigationBarTitleDisplayMode(.inline)
			}
		)
	}
	
}

#Preview {
	NavigationView(content: {
		AnimalDetailsView(
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
	})
}
