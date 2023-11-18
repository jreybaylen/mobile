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
							IconWithLabelView(
								icon: "photo.on.rectangle",
								label: "Wilderness in Pictures"
							)
							
							AnimalGalleryView(animal: animal)
						}).padding(.horizontal)
						
						Group(content: {
							IconWithLabelView(
								icon: "questionmark.circle",
								label: "Did you know?"
							)
							
							AnimalFactsView(animal: animal)
						}).padding(.horizontal)
						
						Group(content: {
							IconWithLabelView(
								icon: "info.circle",
								label: "About The \(animal.name)".capitalized
							)
							
							Text(animal.description)
								.multilineTextAlignment(.leading)
								.layoutPriority(1)
						}).padding(.horizontal)
						
						Group(content: {
							IconWithLabelView(
								icon: "map",
								label: "National Parks"
							)
							
							MapKitView()
						}).padding(.horizontal)
						
						Group(content: {
							IconWithLabelView(
								icon: "books.vertical",
								label: "Learn More"
							)
							
							WebsiteLinkView(
								url: animal.link,
								label: animal.name
							)
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
		AnimalDetailsView(animal: TestAnimalData)
	})
}
