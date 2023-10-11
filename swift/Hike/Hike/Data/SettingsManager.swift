//
//  SettingsManager.swift
//  Hike
//
//  Created by John Rey on 10/11/23.
//

import Foundation
import SwiftUI

struct SettingsDetails: Identifiable {
	internal let id = UUID()
	
	var label: String
	var icon: String
	var content: String?
	var tintColor: Color
	var linkLabel: String?
	var linkDestination: String?
	
	init(
		label: String,
		icon: String,
		content: String,
		tintColor: Color
	) {
		self.label = label
		self.icon = icon
		self.content = content
		self.tintColor = tintColor
	}
	
	init(
		label: String,
		icon: String,
		tintColor: Color,
		linkLabel: String,
		linkDestination: String
	) {
		self.label = label
		self.icon = icon
		self.tintColor = tintColor
		self.linkLabel = linkLabel
		self.linkDestination = linkDestination
	}
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
	
	let appSettingsDetails: [ SettingsDetails ] = [
		SettingsDetails(
			label: "Application",
			icon: "apps.iphone",
			content: "Hike",
			tintColor: .blue
		),
		SettingsDetails(
			label: "Compatibility",
			icon: "info.circle",
			content: "iOS, iPadOS",
			tintColor: .red
		),
		SettingsDetails(
			label: "Technology",
			icon: "swift",
			content: "Swift, SwiftUI",
			tintColor: .orange
		),
		SettingsDetails(
			label: "Version",
			icon: "gear",
			content: "v1.0.0",
			tintColor: .purple
		),
		SettingsDetails(
			label: "Developer",
			icon: "ellipsis.curlybraces",
			content: "John Rey",
			tintColor: .mint
		),
		SettingsDetails(
			label: "Designer",
			icon: "paintpalette",
			content: "Jrey",
			tintColor: .pink
		),
		SettingsDetails(
			label: "Website",
			icon: "globe.asia.australia.fill",
			tintColor: .indigo,
			linkLabel: "John Rey Baylen",
			linkDestination: "https://jreybaylen.vercel.app"
		)
	]
}
