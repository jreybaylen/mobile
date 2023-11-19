//
//  AnimalVideoModel.swift
//  Africa
//
//  Created by John Rey on 11/19/23.
//

struct AnimalVideo: Codable, Identifiable {
	
	let id: String
	let name: String
	let headline: String
	
	var thumbnail: String {
		"video-\(id)"
	}
	
}
