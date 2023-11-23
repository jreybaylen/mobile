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
	
	static let PRODUCTS: [ Product ] = Bundle.main.decode("products.json")
	
	static let GRID_SPACE: Double = 10
	static let GRID_LAYOUT: [ GridItem ] = Array(
		repeating: GridItem(.flexible()),
		count: 2
	)
	
	static let BORDER_RADIUS: CGFloat = 16
	
}
