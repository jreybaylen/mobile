//
//  AnimalsView.swift
//  Africa
//
//  Created by John Rey on 11/18/23.
//

import SwiftUI

struct AnimalsView: View {
	
	let animals: [ Animal ]
	
    var body: some View {
		List(content: {
			AnimalsCoverView()
			 
			ForEach(
				animals,
				content: {
					animal in
					
					NavigationLink(
						destination: AnimalDetailsView(animal: animal),
						label: {
							ImageWithDescriptionView(
								image: animal.image,
								title: animal.name,
								description: animal.headline
							)
						}
					)
				}
			)
			
			CopyrightView()
				.modifier(CenterModifier())
		 })
    }
	
}

#Preview {
    AnimalsView(animals: [ TestAnimalInfo ])
}
