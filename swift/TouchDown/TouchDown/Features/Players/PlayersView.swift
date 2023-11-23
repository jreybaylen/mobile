//
//  PlayersView.swift
//  TouchDown
//
//  Created by John Rey on 11/23/23.
//

import SwiftUI

struct PlayersView: View {
	
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
    PlayersView()
}
