//
//  PositionModifier.swift
//  Africa
//
//  Created by John Rey on 11/22/23.
//

import SwiftUI

struct CenterModifier: ViewModifier {
	
	func body(content: Content) -> some View {
		HStack(content: {
			Spacer()
			
			content
			
			Spacer()
		})
	}
	
}
