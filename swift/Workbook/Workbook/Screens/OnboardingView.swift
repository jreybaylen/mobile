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
	@State private var imageOffset: CGSize = .zero
	@State private var indicatorOpacity: Double = 1
	@State private var title = "Share."
	
	private var isHomeView: Binding<Bool> {
		Binding(
			get: {
				self.buttonOffset > (self.buttonWidth / 2)
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
					Text(title)
						.font(.system(size: 60))
						.fontWeight(.heavy)
						.foregroundStyle(.white)
						.transition(.opacity)
					
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
					).offset(x: imageOffset.width * -1)
						.blur(radius: abs(imageOffset.width / 5))
						.animation(
							.easeOut(duration: 1),
							value: imageOffset
						)
					
					Image("character-1")
						.resizable()
						.scaledToFit()
						.opacity(isAnimating ? 1 : 0)
						.animation(
							.easeOut(duration: 1),
							value: isAnimating
						)
						.offset(x: imageOffset.width * IMAGE_OFFSET, y: 0)
						.rotationEffect(.degrees(Double(imageOffset.width / 20)))
						.gesture(
							DragGesture()
								.onChanged {
									gesture in
									
									if abs(imageOffset.width) <= IMAGE_MAX_RANGE {
										imageOffset = gesture.translation
										
										withAnimation(.linear(duration: 0.25)) {
											indicatorOpacity = 0
											title = "Give."
										}
									}
								}
								.onEnded {
									_ in
									
									imageOffset = .zero
									
									withAnimation(.linear(duration: 0.25)) {
										indicatorOpacity = 1
										title = "Share."
									}
								}
						)
						.animation(
							.easeOut(duration: 1),
							value: imageOffset
						)
				}.overlay(
					Image(systemName: "arrow.left.and.right.circle")
						.foregroundStyle(.white)
						.font(.system(
							size: 44,
							weight: .ultraLight
						))
						.opacity(isAnimating ? 1 : 0)
						.animation(
							.easeIn(duration: 1).delay(2),
							value: isAnimating
						)
						.opacity(indicatorOpacity),
					alignment: .bottom
				)
				
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
										
										withAnimation(Animation.easeOut(duration: 0.5)) {
											if isHomeView.wrappedValue {
												buttonOffset = buttonWidth - BUTTON_OFFSET
												
												DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
													playSound(sound: "chimeup", type: "mp3")
													isOnboardingView.toggle()
												}
											} else {
												buttonOffset = 0
											}
										}
									}
							)
						
						Spacer()
					}
				}.frame(
					width: buttonWidth,
					height: 80,
					alignment: .center
			   ).padding()
					.opacity(isAnimating ? 1 : 0)
					.offset(y: isAnimating ? 0 : 40)
					.animation(
						.easeOut(duration: 1),
						value: isAnimating
					)
				
				Spacer()
			}
		}.preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
			.onAppear(perform: {
				isAnimating.toggle()
			})
	}
}

#Preview {
    OnboardingView()
}
