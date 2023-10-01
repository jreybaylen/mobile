//
//  TaskView.swift
//  NightWatch
//
//  Created by John Rey on 9/29/23.
//

import SwiftUI

struct TaskView: View {
	@ObservedObject var task: Task
	
	var body: some View {
		HStack {
			Image(systemName: task.completed ? "checkmark.square.fill" : "square")
			Text(task.name)
				.foregroundColor(task.completed ? .gray : .text)
				.strikethrough(task.completed)
		}
	}
}
