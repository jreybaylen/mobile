//
//  ContentView.swift
//  Pinch
//
//  Created by John Rey on 10/17/23.
//

import SwiftUI

struct ContentView: View {
	@State private var isAnimating = false
	@State private var scaleEffect: CGFloat = 1
	@State private var gestureEffect: CGSize = .zero
	
	func resetImageScaleAndGestureEffect() {
		return withAnimation(.spring()) {
			scaleEffect = 1
			gestureEffect = .zero
		}
	}
	
    var body: some View {
		NavigationView{
			ZStack {
				Image("magazine-front-cover")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.cornerRadius(10)
					.padding()
					.shadow(
						color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.2),
						radius: 12,
						x: 2,
						y: 2
					)
					.opacity(isAnimating ? 1 : 0)
					.scaleEffect(scaleEffect)
					.offset(x: gestureEffect.width, y: gestureEffect.height)
					.onTapGesture(count: 2, perform: {
						withAnimation(.spring()) {
							if scaleEffect == 1 {
								withAnimation(.spring()) {
									scaleEffect = 5
								}
								
								return
							}
							
							resetImageScaleAndGestureEffect()
						}
					})
					.gesture(
						DragGesture()
							.onChanged {
								value in
								
								withAnimation(.linear(duration: 1)) {
									gestureEffect = value.translation
								}
							}
							.onEnded {
								_ in
								
								if scaleEffect == 1 {
									resetImageScaleAndGestureEffect()
								}
							}
					)
			}.navigationTitle("Pinch & Zoom")
				.navigationBarTitleDisplayMode(.inline)
				.onAppear(perform: {
					withAnimation(.linear(duration: 1)) {
						isAnimating.toggle()
					}
				})
		}
    }
}

#Preview {
    ContentView()
}
