//
//  BrowseView.swift
//  Africa
//
//  Created by John Rey on 11/18/23.
//

import SwiftUI

struct BrowseView: View {
	
	let animals: [ Animal ] = Bundle.main.decode("animals.json")
	let coverImages: [ CoverImage ] = Bundle.main.decode("covers.json")
	
	var body: some View {
		NavigationView(content: {
			ScrollView(content: {
				ImageSliderView(images: coverImages)
					.frame(height: 300)
					.padding(.bottom, 10)
					.listRowInsets(
						EdgeInsets(
							top: 0,
							leading: 0,
							bottom: 0,
							trailing: 0
						)
					)
				
				ForEach(
					animals,
					content: {
						animal in
						
						ImageWithDescriptionView(
							image: animal.image,
							title: animal.name,
							description: animal.headline
						)
					}
				)
			}).navigationTitle("Africa")
		})
    }
	
}

#Preview {
    BrowseView()
}
