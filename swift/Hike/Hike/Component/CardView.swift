//
//  CardView.swift
//  Hike
//
//  Created by John Rey on 10/6/23.
//

import SwiftUI

struct CardView: View {
	@State private var imageNumber = 1
	@State private var randomNumber = 1
	@State private var isShowingSheet = false
	
	func generateRandomNumber() {
		repeat {
			randomNumber = Int.random(in: 1...5)
		} while imageNumber == randomNumber
					
		imageNumber = randomNumber
	}
	
    var body: some View {
		ZStack {
			CustomBackgroundView()
			
			VStack {
				VStack(
					alignment: .leading,
					content: {
						HStack {
							Text("Hiking")
								.fontWeight(.black)
								.font(.system(size: 52))
								.foregroundStyle(
									LinearGradient(
										colors: [
											.customGrayLight,
											.customGrayMedium
										],
										startPoint: .top,
										endPoint: .bottom
									)
							)
							
							Spacer()
							
							Button {
								isShowingSheet.toggle()
							} label: {
								CustomButtonView()
							}
							.sheet(
								isPresented: $isShowingSheet,
								content: {
									SettingsView()
										.presentationDragIndicator(.visible)
										.presentationDetents([
											.medium,
											.large
										])
								}
							)
						}
						
						Text("Fun and enjoyable outdoor activity for friends and families.")
							.multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
							.italic()
					}
				).padding(.horizontal, 30)
				
				ZStack {
				   CustomCircleView()
				   
				   Image("image-\(imageNumber)")
					   .resizable()
					   .scaledToFit()
					   .animation(.default, value: imageNumber)
			   }
			
				Button {
					generateRandomNumber()
				} label: {
					Text("Explore More")
						.font(.title2)
						.fontWeight(.heavy)
						.foregroundStyle(
							LinearGradient(
								colors: [
									.customGreenLight,
									.customGreenMedium
								],
								startPoint: .top,
								endPoint: .bottom
							)
						)
						.shadow(
							color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.25),
							radius: 0.25,
							x: 1,
							y: 2
						)
				}.buttonStyle(GradientButton())
			}
		}.frame(
			width: 320,
			height: 570
		)
    }
}

#Preview {
    CardView()
}
