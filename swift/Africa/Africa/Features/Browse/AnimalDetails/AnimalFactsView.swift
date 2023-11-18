//
//  AnimalFactsView.swift
//  Africa
//
//  Created by John Rey on 11/19/23.
//

import SwiftUI

struct AnimalFactsView: View {
	
	let animal: Animal
	
    var body: some View {
		GroupBox(content: {
			TabView(content: {
				ForEach(
					animal.fact,
					id: \.self,
					content: {
						fact in
						
						Text(fact)
					}
				)
			}).tabViewStyle(PageTabViewStyle())
				.frame(
					minHeight: 148,
					idealHeight: 168,
					maxHeight: 180
				)
		})
    }
	
}

#Preview {
    AnimalFactsView(animal: TestAnimalData)
}
