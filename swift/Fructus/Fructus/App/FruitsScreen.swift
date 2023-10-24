//
//  FruitsScreen.swift
//  Fructus
//
//  Created by John Rey on 10/24/23.
//

import SwiftUI

struct FruitsScreen: View {
	private let fruits: [ Fruit ] = fruitsData.shuffled()
	
	@AppStorage("isOnboardingScreen") var isOnboardingScreen: Bool = false
	
    var body: some View {
		Button(action: {
			   isOnboardingScreen = true
		   }, label: {
			   Text("Re-Start")
		   })
		NavigationView(content: {
			NavigationLink(destination: Text("Destination")) {
				Text("Navigate")
			}
		})
    }
}

#Preview {
    FruitsScreen()
}
