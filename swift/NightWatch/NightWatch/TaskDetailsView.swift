//
//  TaskDetailsView.swift
//  NightWatch
//
//  Created by John Rey on 9/29/23.
//

import SwiftUI

struct TaskDetailsView: View {
	let title: String
	let task: Task
	
	var body: some View {
		VStack {
			Text(title)
				.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
				.bold()
				.padding(.bottom)
			TaskView(task: task)
				.padding(.vertical)
			Button("Mark as Complete", action: {
				task.completed = true
			})
			.padding(.vertical)
			.padding(.horizontal, 25)
			.background(Color.blue)
			.foregroundColor(.white)
			.cornerRadius(25)
		}
	}
}
