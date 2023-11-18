//
//  AnimalsCoverView.swift
//  Africa
//
//  Created by John Rey on 11/18/23.
//

import SwiftUI

struct AnimalsCoverView: View {
	
	let coverImages: [ CoverImage ] = Bundle.main.decode("covers.json")
	
    var body: some View {
		TabSliderView(images: coverImages)
			.frame(height: 300)
			.padding(
				.bottom,
				10
			)
			.listRowInsets(
				EdgeInsets(
					top: 0,
					leading: 0,
					bottom: 0,
					trailing: 0
				)
			)
    }
	
}

#Preview {
    AnimalsCoverView()
}
