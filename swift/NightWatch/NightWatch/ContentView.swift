//
//  ContentView.swift
//  NightWatch
//
//  Created by John Rey on 9/29/23.
//

import SwiftUI

struct TaskHeaderView: View {
	let title: String
	
	var body: some View {
		Text(title)
			.bold()
			.padding(.bottom, 5)
			.foregroundColor(.accentColor)
	}
}

struct TasksView: View {
	let title: String
	let isFocus: Bool
	
	@ObservedObject var taskManager: TaskManager
	
	var body: some View {
		ForEach(
			taskManager.tasks.filter({
				isFocus ? !$0.completed : !isFocus
			})
		) {
			task in
			NavigationLink(
				destination: TaskDetailsView(
					title: title,
					task: task
				),
				label: {
					TaskView(task: task)
				}
			)
		}
		.onDelete(perform: {
			indexSet in
			taskManager.tasks.remove(atOffsets: indexSet)
		})
		.onMove(perform: {
			indices, newOffset in
			taskManager.tasks.move(
				fromOffsets: indices,
				toOffset: newOffset
			)
		})
	}
}

struct TasksSectionView: View {
	let title: String
	let isFocus: Bool
	
	@ObservedObject var tasks: TaskManager
	
	var body: some View {
		Section(
			content: {
				TasksView(
					title: title,
					isFocus: isFocus,
					taskManager: tasks
				)
			},
			header: {
				TaskHeaderView(title: title)
			}
		)
	}
}

struct ContentView: View {
	let nightlyTitle = "Nightly Tasks"
	let weeklyTitle = "Weekly Tasks"
	let monthlyTitle = "Monthly Tasks"
	
	@State private var reset = false
	@State private var focusMode = false
	
	private var tasks = Tasks()
	private var nightlyTaskManager: TaskManager
	private var weeklyTaskManager: TaskManager
	private var monthlyTaskManager: TaskManager
	
	init() {
		nightlyTaskManager = TaskManager(tasks: tasks.nightly)
		weeklyTaskManager = TaskManager(tasks: tasks.weekly)
		monthlyTaskManager = TaskManager(tasks: tasks.monthly)
	}
	
    var body: some View {
		NavigationView {
			List {
				TasksSectionView(
					title: nightlyTitle,
					isFocus: focusMode,
					tasks: nightlyTaskManager
				)
				
				TasksSectionView(
					title: weeklyTitle,
					isFocus: focusMode,
					tasks: weeklyTaskManager
				)
				
				TasksSectionView(
					title: monthlyTitle,
					isFocus: focusMode,
					tasks: monthlyTaskManager
				)
			}
			.toolbar(
				content: {
					ToolbarItem(
						placement: .topBarLeading,
						content: {
							EditButton()
						}
					)
					ToolbarItem(
						placement: .topBarTrailing,
						content: {
							Button(
								"Reset",
								action: {
									reset = true
								}
							)
						}
					)
					ToolbarItem(
						placement: .bottomBar,
						content: {
							Toggle(
								isOn: $focusMode,
								label: {
									Text("Focus Mode")
								}
							)
							.toggleStyle(SwitchToggleStyle(tint: .accentColor))
							.padding(.horizontal, 5)
						}
					)
				}
			)
			.alert(
				isPresented: $reset,
				content: {
					Alert(
						title: Text("Notification"),
						message: Text("Are you sure to reset the tasks?"),
						primaryButton: .cancel(
							Text("Cancel")
								.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
						),
						secondaryButton: .destructive(
							Text("Confirm"),
							action: {
								let initial = Tasks()
								
								nightlyTaskManager.resetTasks(tasks: initial.nightly)
								weeklyTaskManager.resetTasks(tasks: initial.weekly)
								monthlyTaskManager.resetTasks(tasks: initial.monthly)
							}
						)
					)
				}
			)
			.padding(.bottom, 1)
			.background(Color.white)
			.navigationTitle("NightWatch")
		}
		Spacer()
    }
}

#Preview {
    ContentView()
}
