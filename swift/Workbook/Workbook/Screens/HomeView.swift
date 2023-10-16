//
//  HomeView.swift
//  Workbook
//
//  Created by John Rey on 10/12/23.
//

import SwiftUI

struct HomeView: View {
	@AppStorage("onboarding") var isOnboardingView: Bool = false
	
	@State var isAnimating = false
	
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
					 .offset(y: isAnimating ? 35 : -50)
					 .animation(
						.easeInOut(duration: 4)
						.repeatForever(),
						value: isAnimating
					 )
			}
			
			Text("The time that leads to mastery is dependent on the intesity of our focus.")
				.font(.title3)
				.fontWeight(.light)
				.foregroundStyle(.secondary)
				.multilineTextAlignment(.center)
				.padding()
			
			Spacer()
			
			Button {
				withAnimation {
					playSound(sound: "success", type: "m4a")
					isOnboardingView.toggle()
				}
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
			
			Spacer()
		}.opacity(isAnimating ? 1 : 0)
			.offset(y: isAnimating ? 0 : 40)
			.animation(
				.easeOut(duration: 2),
				value: isAnimating
			)
			.onAppear(perform: {
				isAnimating.toggle()
			})
    }
}

#Preview {
    HomeView()
}
