//
//  GalleryView.swift
//  Africa
//
//  Created by John Rey on 11/18/23.
//

import SwiftUI

struct GalleryView: View {
    
	var body: some View {
		ScrollView(
			.vertical,
			showsIndicators: false,
			content: {
				Text("Gallery")
			}
		).frame(
			maxWidth: .infinity,
			maxHeight: .infinity
		).background(MotionAnimationView())
    }
	
}

#Preview {
    GalleryView()
}
