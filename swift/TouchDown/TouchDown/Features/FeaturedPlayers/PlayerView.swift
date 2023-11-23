//
//  PlayerView.swift
//  TouchDown
//
//  Created by John Rey on 11/22/23.
//

import SwiftUI

struct PlayerView: View {
	
	let player: Player
	
    var body: some View {
		Image(player.image)
			.fitScreen()
			.clipShape(
				RoundedRectangle(cornerRadius: Constants.BORDER_RADIUS)
			)
			.padding(
				EdgeInsets(
					top: 10,
					leading: 16,
					bottom: 0,
					trailing: 16
				)
			)
    }
	
}

#Preview {
	PlayerView(player: TestPlayer)
}
