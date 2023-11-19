//
//  WatchView.swift
//  Africa
//
//  Created by John Rey on 11/18/23.
//

import SwiftUI

struct WatchView: View {
	
	@State var videos: [ AnimalVideo ] = Bundle.main.decode("videos.json")
	
    var body: some View {
		NavigationView(content: {
			List(content: {
				ForEach(
					0..<videos.count,
					id: \.self,
					content: {
						index in
						
						let video = videos[ index ]
						
						NavigationLink(
							destination: VideoPlayerView(
								title: video.name,
								fileName: video.id
							),
							label: {
								VideoView(video: video)
									.padding(
										.top,
										6
									)
									.padding(
										.bottom,
										index == (videos.count - 1) ? 8 : 0
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
