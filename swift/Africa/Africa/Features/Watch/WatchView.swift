//
//  WatchView.swift
//  Africa
//
//  Created by John Rey on 11/18/23.
//

import SwiftUI

struct WatchView: View {
	
	@State private var videos: [ AnimalVideo ] = Bundle.main.decode("videos.json")
	
    var body: some View {
		NavigationView(content: {
			List(content: {
				ForEach(
					0..<videos.count,
					id: \.self,
					content: {
						index in
						
						let video = videos[ index ]
						let isLast = index == (videos.count - 1)
						
						NavigationLink(
							destination: VideoPlayerView(
								title: video.name,
								fileName: video.id
							),
							label: {
								VideoView(video: video)
									.padding(
										isLast ? .bottom : .top,
										isLast ? 8 : 6
									)
							}
						)
					}
				)
			}).listStyle(InsetGroupedListStyle())
				.navigationTitle("Videos")
				.toolbar {
					ToolbarItem(
						placement: .topBarTrailing,
						content: {
							Button(action: {
								videos.shuffle()
							}, label: {
								Image(systemName: "arrow.2.squarepath")
									.fitToScreen()
							})
						}
					)
				}
		})
    }
	
}

#Preview {
    WatchView()
}
