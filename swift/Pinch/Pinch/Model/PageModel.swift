//
//  PageModel.swift
//  Pinch
//
//  Created by John Rey on 10/19/23.
//

import Foundation

struct PageManager: Identifiable {
	let id: Int
	let imageName: String
}

extension PageManager {
	var thumbName: String {
		return "thumb-\(self.imageName)"
	}
}
