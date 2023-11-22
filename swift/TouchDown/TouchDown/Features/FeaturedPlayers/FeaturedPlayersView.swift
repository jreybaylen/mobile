//
//  FeaturedPlayersView.swift
//  TouchDown
//
//  Created by John Rey on 11/22/23.
//

import SwiftUI

struct FeaturedPlayersView: View {
	
    var body: some View {
		TabView(content: {
			ForEach(
				Constants.PLAYERS,
				content: {
					player in
					
					PlayerView(player: player)
				}
			)
		}).frame(height: UIScreen.main.bounds.width / 1.6)
			.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
			.padding(
				.vertical,
				8
			)
    }
	
}

#Preview {
    FeaturedPlayersView()
}
