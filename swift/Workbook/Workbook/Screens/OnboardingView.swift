//
//  OnboardingView.swift
//  Workbook
//
//  Created by John Rey on 10/12/23.
//

import SwiftUI

struct OnboardingView: View {
	@AppStorage("onboarding") private var isOnboardingView: Bool = true
	
	@State private var isAnimating = false
	@State private var buttonOffset: CGFloat = 0
	@State private var buttonWidth = UIScreen.main.bounds.width - BUTTON_OFFSET
	
	private var isHomeView: Binding<Bool> {
		Binding(
			get: {
				self.buttonOffset > self.buttonWidth / 2
			},
			set: {
				result in
				
				self.isOnboardingView = result
			}
		)
	}
	
    var body: some View {
		ZStack {
			Color("ColorBlue")
				.ignoresSafeArea()
			
			VStack {
				Spacer()
				
				VStack {
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
				}.opacity(isAnimating ? 1 : 0)
					.offset(y: isAnimating ? 0 : -40)
					.animation(
						.easeOut(duration: 1),
						value: isAnimating
					)
				
				ZStack {
					RingsView(
						shapeColor: .white,
						shapeOpacity: 0.2
					)
					
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
							.frame(width: buttonOffset + 72)
						
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
						}.foregroundStyle(.white)
							.offset(x: buttonOffset)
							.frame(
								width: 80,
								height: 80,
								alignment: .center
							).onTapGesture {
								isOnboardingView.toggle()
							}.gesture(
								DragGesture()
									.onChanged {
										gesture in
										
										let gestureWidth = gesture.translation.width
										
										if (gestureWidth > 0) && (buttonOffset <= (buttonWidth - BUTTON_OFFSET)) {
											buttonOffset = gestureWidth
										}
									}
									.onEnded {
										_ in
										
										if isHomeView.wrappedValue {
											buttonOffset = buttonWidth - BUTTON_OFFSET
											isOnboardingView.toggle()
										}
										
										buttonOffset = 0
									}
							)
						
						Spacer()
					}
				}.frame(
					width: buttonWidth,
					height: 80,
					alignment: .center
			   ).padding()
				
				Spacer()
			}
		}.onAppear {
			isAnimating.toggle()
		}
	}
}

#Preview {
    OnboardingView()
}
