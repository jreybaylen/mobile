//
//  SettingsModel.swift
//  Fructus
//
//  Created by John Rey on 11/8/23.
//

import Foundation

struct Settings: Identifiable {
	let id = UUID()
	
	let category: String
	let description: String
	let destination: String
	
	init(category: String, description: String, destination: String?) {
		self.category = category
		self.description = description
		self.destination = destination ?? ""
	}
}
