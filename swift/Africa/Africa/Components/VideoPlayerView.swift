//
//  VideoPlayerView.swift
//  Africa
//
//  Created by John Rey on 11/20/23.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
	
	let title: String
	let fileName: String
	
    var body: some View {
		VStack(content: {
			VideoPlayer(
				player: playVideo(
					file: fileName,
					ext: "mp4"
				)
			).overlay(
				Image("logo")
					.fitToScreen()
					.frame(
						width: 32,
						height: 32
					)
					.padding(
						.top,
						6
					)
					.padding(
						.horizontal,
						8
					),
				alignment: .topLeading
			)
		}).navigationTitle(title)
			.navigationBarTitleDisplayMode(.inline)
    }
	
}

#Preview {
	NavigationView(content: {
		VideoPlayerView(
			title: "Lion",
			fileName: "lion"
		)
	})
}
