//
//  OnboardingScreen.swift
//  Fructus
//
//  Created by John Rey on 10/24/23.
//

import SwiftUI

struct OnboardingScreen: View {
	private let fruits: [ Fruit ] = fruitsData.shuffled()
	
    var body: some View {
		TabView(content: {
			ForEach(0..<5) {
				fruitIndex in
				
				OnboardingFruitView(fruit: fruits[ fruitIndex ])
			}
		}).tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    OnboardingScreen()
}
