//
//  AnimalsCoverView.swift
//  Africa
//
//  Created by John Rey on 11/18/23.
//

import SwiftUI

struct AnimalsCoverView: View {
	
	private let coverImages: [ CoverImage ] = Bundle.main.decode("covers.json")
	
    var body: some View {
		TabSliderView(images: coverImages)
			.frame(height: 300)
    }
	
}

#Preview {
    AnimalsCoverView()
}
