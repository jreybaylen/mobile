//
//  ConstantsUtil.swift
//  TouchDown
//
//  Created by John Rey on 11/22/23.
//

import SwiftUI

struct Constants {
	
	static let PLAYERS: [ Player ] = Bundle.main.decode("players.json")
	
	static let CATEGORIES: [ Category ] = Bundle.main.decode("categories.json")
	
	static let GRID_COLUMNS: Double = 12
	static let GRID_LAYOUT: [ GridItem ] = Array(
		repeating: GridItem(.flexible()),
		count: 2
	)
	
}
