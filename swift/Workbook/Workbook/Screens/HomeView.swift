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
			Spacer()
			
			ZStack {
				RingsView(
					shapeColor: .gray,
					shapeOpacity: 0.1
				)

				Image("character-2")
					 .resizable()
					 .scaledToFit()
					 .padding()
			}
			
			Text("The time that leads to mastery is dependent on the intesity of our focus.")
				.font(.title3)
				.fontWeight(.light)
				.foregroundStyle(.secondary)
				.multilineTextAlignment(.center)
				.padding()
			
			Spacer()
			
			Button {
				isOnboardingView.toggle()
			} label: {
				Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
					.imageScale(.large)
				
				Text("Restart")
					.font(.system(
						.title3,
						design: .rounded
					))
					.fontWeight(.bold)
			}.buttonStyle(.borderedProminent)
				.buttonBorderShape(.capsule)
				.controlSize(.large)
		}
    }
}

#Preview {
    HomeView()
}
