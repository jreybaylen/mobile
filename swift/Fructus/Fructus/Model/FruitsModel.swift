//
//  FruitsModel.swift
//  Fructus
//
//  Created by John Rey on 10/24/23.
//

import SwiftUI

struct Fruit: Identifiable {
	let id = UUID()
	
	let title: String
	let headline: String
	let image: String
	let gradientColors: [ Color ]
	let description: String
	let nutrition: [ String ]
}
