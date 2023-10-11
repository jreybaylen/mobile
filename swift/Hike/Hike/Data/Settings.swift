//
//  Settings.swift
//  Hike
//
//  Created by John Rey on 10/11/23.
//

import Foundation
import SwiftUI

struct Details {
	var label: String
	var icon: String
	var content: String?
	var tintColor: Color
	var linkLabel: String?
	var linkDestination: String?
}

struct SettingsManager {
	let appIcons = [
		"AppIcon-MagnifyingGlass",
		"AppIcon-Map",
		"AppIcon-Mushroom",
		"AppIcon-Camera",
		"AppIcon-Backpack",
		"AppIcon-Campfire"
	]
	
	let appDetails: [ Details ] = [
		Details(
			label: "Application",
			icon: "apps.iphone",
			content: "Hike",
			tintColor: .blue
		)
	]
}
