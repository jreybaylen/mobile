//
//  ShopUtil.swift
//  TouchDown
//
//  Created by John Rey on 11/24/23.
//

import Foundation

class Shop: ObservableObject {
	
	@Published var product: Product? = nil
	
	func add(_ product: Product) {
		self.product = product
	}
	
	func clear() {
		self.product = nil
	}
	
}
