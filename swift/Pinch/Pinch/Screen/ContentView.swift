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
				Color.clear
				
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
				.overlay(
					alignment: .top,
					content: {
						InfoPanelView(scale: scaleEffect, offset: gestureEffect)
							.padding(.horizontal)
							.padding(.top, 30)
					}
				)
				.overlay(
					alignment: .bottom,
					content: {
						Group {
							HStack {
								Button {
									withAnimation(.spring()) {
										if scaleEffect > 1 {
											scaleEffect -= 1
											
											if scaleEffect <= 1 {
												resetImageScaleAndGestureEffect()
											}
										}
									}
								} label: {
									ControlImageView(icon: "minus.magnifyingglass")
								}
								
								Button {
									resetImageScaleAndGestureEffect()
								} label: {
									ControlImageView(icon: "arrow.up.left.and.down.right.magnifyingglass")
								}
								
								Button {
									withAnimation(.spring()) {
										if scaleEffect > 1 {
											scaleEffect += 1
											
											if scaleEffect > 5 {
												scaleEffect = 5
											}
										}
									}
								} label: {
									ControlImageView(icon: "plus.magnifyingglass")
								}
							}.padding(EdgeInsets(top: 12, leading: 20, bottom: 12, trailing: 20))
								.background(.ultraThinMaterial)
								.cornerRadius(12)
								.opacity(isAnimating ? 1 : 0)
						}.padding(.bottom, 30)
					}
				)
		}
    }
}

#Preview {
    ContentView()
		.preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
