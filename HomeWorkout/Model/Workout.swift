//
//  Workout.swift
//  HomeWorkout
//
//  Created by Spencer Belton on 5/15/21.
//

import Foundation

struct Workout {
    private(set) public var imageName: String
    private(set) public var title: String
    private(set) public var duration: String
    
    init(imageName: String, title: String, duration: String) {
        self.imageName = imageName
        self.title = title
        self.duration = duration
    }
}
