//
//  ImageSliderView.swift
//  Africa
//
//  Created by John Rey on 11/18/23.
//

import SwiftUI

struct ImageSliderView: View {
	
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
    ImageSliderView(images: Bundle.main.decode("covers.json"))
}
