//
//  TabSliderView.swift
//  Africa
//
//  Created by John Rey on 11/18/23.
//

import SwiftUI

struct TabSliderView: View {
	
	let images: [ CoverImage ]
	
	var body: some View {
		TabView(content: {
			ForEach(
				images,
				content: {
					image in
					
					Image(image.name)
						.resizable()
						.scaledToFill()
				}
			)
		}).tabViewStyle(PageTabViewStyle())
	}
	
}

#Preview {
	TabSliderView(images: Bundle.main.decode("covers.json"))
}
