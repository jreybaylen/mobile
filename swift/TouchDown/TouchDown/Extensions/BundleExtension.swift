//
//  BundleExtension.swift
//  TouchDown
//
//  Created by John Rey on 11/22/23.
//

import Foundation

extension Bundle {
	
	func decode<T: Codable>(_ file: String) -> T {
		guard let url = Bundle.main.url(forResource: file, withExtension: nil) else {
			fatalError("Failed to load \(file) in bundle.")
		}
		
		guard let data = try? Data(contentsOf: url) else {
			fatalError("Failed to load \(file) from bundle.")
		}
		
		guard let decodedData = try? JSONDecoder().decode(T.self, from: data) else {
			fatalError("Failed to decode \(file) from bundle.")
		}
		
		return decodedData
	}
	
}
