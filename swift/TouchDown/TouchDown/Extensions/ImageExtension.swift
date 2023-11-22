//
//  ImageExtension.swift
//  TouchDown
//
//  Created by John Rey on 11/22/23.
//

import SwiftUI

extension Image {
	
	func fitScreen() -> some View {
		self.resizable()
			.scaledToFit()
	}
	
}
