//
//  HomeView.swift
//  Workbook
//
//  Created by John Rey on 10/12/23.
//

import SwiftUI

struct HomeView: View {
	@AppStorage("onboarding") var isOnboardingView: Bool = false
	
    var body: some View {
		VStack {
			Text("Home")
				.font(.title)
			
			Button {
				isOnboardingView.toggle()
			} label: {
				Text("Restart")
			}.padding(.top, 20)
		}
    }
}

#Preview {
    HomeView()
}
