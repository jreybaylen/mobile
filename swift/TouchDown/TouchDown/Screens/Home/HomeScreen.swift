//
//  HomeScreen.swift
//  TouchDown
//
//  Created by John Rey on 11/22/23.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
		ZStack {
			VStack(content: {
				NavigationView()
				
				Spacer()
				
				FooterView()
			}).background(Color.appBackground.ignoresSafeArea())
		}.ignoresSafeArea()
    }
}

#Preview {
    HomeScreen()
}
