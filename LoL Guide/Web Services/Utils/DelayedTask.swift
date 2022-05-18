////
////  DelayedTask.swift
////  LoL Guide
////
////  Created by Batuhan Mıcık on 27.04.2022.
////
//
//import Foundation
//internal class DelayedTask {
//    
//    private var queue: DispatchQueue
//    private var task: () -> Void
//    
//    public init(taskName: String, task: @escaping () -> Void) {
//        let queueName: String = "\(frameworkBundle.bundleIdentifier ?? "com.kelmatou.LeagueAPI").\(taskName)"
//        self.queue = DispatchQueue(label: queueName)
//        self.task = task
//    }
//    
//    public func execute(after duration: Duration) {
//        queue.asyncAfter(deadline: .now() + duration.durationSeconds) {
//            self.task()
//        }
//    }
//}
