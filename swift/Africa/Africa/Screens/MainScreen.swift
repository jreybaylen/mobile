//
//  MainScreen.swift
//  Africa
//
//  Created by John Rey on 11/18/23.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
		TabView(content: {
			BrowseView()
				.tabItem {
					TabItemView(
						icon: "square.grid.2x2",
						label: "Browse"
					)
				}
			
			WatchView()
				.tabItem {
					TabItemView(
						icon: "play.rectangle",
						label: "Watch"
					)
				}
				
			MapView()
				.tabItem {
					TabItemView(
						icon: "map",
						label: "Location"
					)
				}
			
			GalleryView()
				.tabItem {
					TabItemView(
						icon: "photo",
						label: "Gallery"
					)
				}
		})
    }
}

#Preview {
    MainScreen()
}
