//
//  FruitImageHeaderView.swift
//  Fructus
//
//  Created by John Rey on 10/25/23.
//

import SwiftUI

struct FruitImageHeaderView: View {
	let fruit: Fruit
	
    var body: some View {
		ZStack {
			LinearGradient(
				colors: fruit.gradientColors,
				startPoint: .top,
				endPoint: .bottom
			)
			
			FruitImageView(fruitImage: fruit.image, isAnimating: false)
		}.frame(height: 440)
    }
}

#Preview {
	FruitImageHeaderView(fruit: fruitsData[0])
}
