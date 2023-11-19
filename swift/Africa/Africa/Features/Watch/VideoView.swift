//
//  VideoView.swift
//  Africa
//
//  Created by John Rey on 11/19/23.
//

import SwiftUI

struct VideoView: View {
	
	let video: AnimalVideo
	
    var body: some View {
		HStack(
			spacing: 10,
			content: {
				ZStack(content: {
					Image(video.thumbnail)
						.fitToScreen()
						.frame(height: 80)
						.clipShape(RoundedRectangle(cornerRadius: 9))
					
					Image(systemName: "play.circle")
						.fitToScreen()
						.frame(height: 32)
						.shadow(radius: 4)
				})
				
				VStack(
					alignment: .leading,
					spacing: 10,
					content: {
						Text(video.name)
							.font(.title2)
							.fontWeight(.bold)
							.foregroundColor(.accentColor)
						
						Text(video.headline)
							.font(.footnote)
							.multilineTextAlignment(.leading)
							.lineLimit(2)
					}
				)
			}
		)
    }
	
}

#Preview {
    VideoView(video: TestAnimalVideo)
}
