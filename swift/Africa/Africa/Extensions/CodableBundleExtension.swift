//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by John Rey on 11/18/23.
//

import Foundation

extension Bundle {
	
	func decode<T: Codable>(_ file: String) -> T {
		guard let url = self.url(forResource: file, withExtension: nil) else {
			fatalError("Failed to locate \(file) in bundle.")
		}
		
		guard let decodableData = try? Data(contentsOf: url) else {
			fatalError("Failed to load \(file) from bundle.")
		}
		
		guard let loadedData = try? JSONDecoder().decode(T.self, from: decodableData) else {
			fatalError("Failed to decode \(file) from bundle.")
		}
		
		return loadedData
	}
	
}
