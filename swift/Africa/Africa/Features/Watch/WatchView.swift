//
//  WatchView.swift
//  Africa
//
//  Created by John Rey on 11/18/23.
//

import SwiftUI

struct WatchView: View {
	
	let videos: [ AnimalVideo ] = Bundle.main.decode("videos.json")
	
    var body: some View {
		ForEach(
			videos,
			content: {
				video in
				
				VideoView(video: video)
			}
		)
    }
	
}

#Preview {
    WatchView()
}
