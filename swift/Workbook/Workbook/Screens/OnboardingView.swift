//
//  OnboardingView.swift
//  Workbook
//
//  Created by John Rey on 10/12/23.
//

import SwiftUI

struct OnboardingView: View {
	@AppStorage("onboarding") var isOnboardingView: Bool = true
	
    var body: some View {
		ZStack {
			Color("ColorBlue")
				.ignoresSafeArea()
			
			VStack {
				Spacer()
				
				Text("Share.")
					.font(.system(size: 60))
					.fontWeight(.heavy)
					.foregroundStyle(.white)
				
				Text("It's not how much we give but how much lvoe we put into giving.")
					.fontWeight(.light)
					.font(.title3)
					.foregroundStyle(.white)
					.multilineTextAlignment(.center)
					.padding(.horizontal, 50)
				
				ZStack {
					RingsView()
					
					Image("character-1")
					 .resizable()
					 .scaledToFit()
				}
				
				ZStack {
					Capsule()
						.fill(.white.opacity(0.2))
					
					Capsule()
						.fill(.white.opacity(0.2))
						.padding(8)
					
					Text("Get Started")
						.font(.system(
							.title3,
							design: .rounded
						))
						.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
						.foregroundStyle(.white)
						.offset(x: 20)
					
					HStack {
						Capsule()
							.fill(Color.customRed)
							.frame(width: 80)
						
						Spacer()
					}
					
					HStack {
						ZStack {
							Circle()
								.fill(Color.customRed)
							
							Circle()
								.fill(.black.opacity(0.15))
								.padding(8)
							
							Image(systemName: "chevron.right.2")
								.font(.system(
									size: 24,
									weight: .bold
								))
						}.onTapGesture {
							isOnboardingView.toggle()
						}.foregroundStyle(.white)
							.frame(
								width: 80,
								height: 80,
								alignment: .center
							)
						
						Spacer()
					}
				}.frame(
					height: 80,
				   alignment: .center
			   ).padding()
				
				Spacer()
			}
		}
    }
}

#Preview {
    OnboardingView()
}
