//
//  Task.swift
//  NightWatch
//
//  Created by John Rey on 9/29/23.
//

import Foundation

class Task: ObservableObject, Identifiable {
	let id = UUID()
	let name: String
	
	@Published var completed: Bool = false
	
	init(name: String) {
		self.name = name
	}
}

class Tasks: ObservableObject {
	var nightly = [
		Task(name: "Patrolling campus"),
		Task(name: "Monitoring cameras"),
		Task(name: "Inspecting buildings"),
		Task(name: "Inspecting equipment"),
		Task(name: "Permitting entry"),
		Task(name: "Control traffic"),
		Task(name: "Document all unusual occurences")
	]
	
	var weekly = [
		Task(name: "Check all windows"),
		Task(name: "Check all doors")
	]
	
	var monthly = [
		Task(name: "Test all cameras"),
		Task(name: "Test all equipment"),
		Task(name: "Test all windows")
	]
}

class TaskManager: ObservableObject {
	@Published var tasks: [Task]
	
	private let initialTasks: [Task] = []
	
	init(tasks: [Task]) {
		self.tasks = tasks
	}
	
	func resetTasks(tasks defaultTasks: [Task]) {
		tasks = defaultTasks
	}
}
