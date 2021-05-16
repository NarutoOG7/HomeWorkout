//
//  DataService.swift
//  HomeWorkout
//
//  Created by Spencer Belton on 5/15/21.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let workouts = [
        Workout(imageName: "pushup01", title: "Push-Up", duration: "30 sec"),
        Workout(imageName: "situp01", title: "Sit-Ups", duration: "45 sec"),
        Workout(imageName: "squat01", title: "Squats", duration: "60 sec")
    ]
    
    func getWorkouts() -> [Workout] {
        return workouts
    }
    
  //  let stretches = [
    
 //   ]
    
    
}
