//
//  ContentView.swift
//  Pinch
//
//  Created by John Rey on 10/17/23.
//

import SwiftUI

struct ContentView: View {
	@State private var isAnimating = false
	@State private var imageScale: CGFloat = 1
	@State private var imageOffset: CGSize = .zero
	@State private var isDrawerOpen = false
	@State private var drawerIcon = "chevron.compact.left"
	
	func resetImageScaleAndEffect() {
		return withAnimation(.spring()) {
			imageScale = 1
			imageOffset = .zero
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
					.scaleEffect(imageScale)
					.offset(x: imageOffset.width, y: imageOffset.height)
					.onTapGesture(count: 2, perform: {
						withAnimation(.spring()) {
							if imageScale == 1 {
								withAnimation(.spring()) {
									imageScale = 5
								}
								
								return
							}
							
							resetImageScaleAndEffect()
						}
					})
					.gesture(
						DragGesture()
							.onChanged {
								value in
								
								withAnimation(.linear(duration: 1)) {
									imageOffset = value.translation
								}
							}
							.onEnded {
								_ in
								
								if imageScale == 1 {
									resetImageScaleAndEffect()
								}
							}
					)
					.gesture(
						MagnificationGesture()
							.onChanged {
								value in
								
								withAnimation(.linear(duration: 1)) {
									if imageScale >= 1 && imageScale <= 5 {
										imageScale = value
									}
									
									if imageScale > 5 {
										imageScale = 5
									}
									
									if imageScale <= 1 {
										resetImageScaleAndEffect()
									}
								}
							}
							.onEnded {
								_ in
								
								if imageScale > 5 {
									imageScale = 5
								}
								
								if imageScale <= 1 {
									resetImageScaleAndEffect()
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
						InfoPanelView(scale: imageScale, offset: imageOffset)
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
										if imageScale > 1 {
											imageScale -= 1
											
											if imageScale <= 1 {
												resetImageScaleAndEffect()
											}
										}
									}
								} label: {
									ControlImageView(icon: "minus.magnifyingglass")
								}
								
								Button {
									resetImageScaleAndEffect()
								} label: {
									ControlImageView(icon: "arrow.up.left.and.down.right.magnifyingglass")
								}
								
								Button {
									withAnimation(.spring()) {
										if imageScale > 1 {
											imageScale += 1
											
											if imageScale > 5 {
												imageScale = 5
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
				.overlay(
					HStack(spacing: 12) {
						Image(systemName: drawerIcon)
							.resizable()
							.scaledToFit()
							.frame(height: 40)
							.padding()
							.foregroundStyle(.secondary)
							.onTapGesture(perform: {
								drawerIcon = "chevron.compact.\(isDrawerOpen ? "left" : "right")"
								
								withAnimation(.easeOut(duration: 0.3)) {
									isDrawerOpen.toggle()
								}
							})
						
						Spacer()
					}.padding(EdgeInsets(top: 16, leading: 8, bottom: 16, trailing: 8))
						.background(.ultraThinMaterial)
						.cornerRadius(12)
						.opacity(isAnimating ? 1 : 0)
						.frame(width: 260)
						.padding(.top, UIScreen.main.bounds.height / 12)
						.offset(x: isDrawerOpen ? 10 : 205),
					alignment: .topTrailing
				)
		}
    }
}

#Preview {
    ContentView()
		.preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}