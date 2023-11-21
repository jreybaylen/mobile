//
//  AnimalsGridView.swift
//  Africa
//
//  Created by John Rey on 11/22/23.
//

import SwiftUI

struct AnimalsGridView: View {
	
	let animals: [ Animal ]
	let gridLayout: [ GridItem ]
	
    var body: some View {
		ScrollView(
			.vertical,
			showsIndicators: false,
			content: {
				LazyVGrid(
					columns: gridLayout,
					content: {
						ForEach(
							animals,
							content: {
								animal in
							
								NavigationLink(
									destination: AnimalDetailsView(animal: animal),
									label: {
										Image(animal.image)
											.fitToScreen()
											.clipShape(RoundedRectangle(cornerRadius: 12))
											.padding(3)
											.background(Color.white)
											.clipShape(RoundedRectangle(cornerRadius: 12))
									}
								)
							}
						)
					}
				).animation(.easeIn)
				
				CopyrightView()
					.modifier(CenterModifier())
			}
		).padding(.horizontal)
    }
	
}

#Preview {
	AnimalsGridView(
		animals: [ TestAnimalInfo ],
		gridLayout: [ GridItem(.flexible()) ]
	)
}
