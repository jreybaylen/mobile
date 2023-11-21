//
//  AnimalsView.swift
//  Africa
//
//  Created by John Rey on 11/18/23.
//

import SwiftUI

struct AnimalsView: View {
	
	private let animals: [ Animal ] = Bundle.main.decode("animals.json")
	
    var body: some View {
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
    }
	
}

#Preview {
    AnimalsView()
}
