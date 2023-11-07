//
//  FruitDetailsScreen.swift
//  Fructus
//
//  Created by John Rey on 10/25/23.
//

import SwiftUI

struct FruitDetailsScreen: View {
	let fruit: Fruit
	
    var body: some View {
		Text(fruit.title)
    }
}

#Preview {
    FruitDetailsScreen(fruit: fruitsData[0])
}
