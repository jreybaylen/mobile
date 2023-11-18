//
//  ImageSliderView.swift
//  Africa
//
//  Created by John Rey on 11/18/23.
//

import SwiftUI

struct ImageSliderView: View {
	
	let coverImages: [ CoverImage ] = Bundle.main.decode("covers.json")
	
    var body: some View {
		TabView(content: {
			ForEach(
				coverImages,
				content: {
					coverImage in
					
					Image(coverImage.name)
						.resizable()
						.scaledToFill()
				}
			)
		}).tabViewStyle(PageTabViewStyle())
    }
	
}

#Preview {
    ImageSliderView()
}
