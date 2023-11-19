//
//  ImageExtension.swift
//  Africa
//
//  Created by John Rey on 11/20/23.
//

import SwiftUI

extension Image {
	
	func fitToScreen() -> some View {
		self
			.resizable()
			.scaledToFit()
	}
	
	func fillToScreen() -> some View {
		self
			.resizable()
			.scaledToFill()
	}
	
}
