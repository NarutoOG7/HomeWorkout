//
//  DataService.swift
//  HomeWorkout
//
//  Created by Spencer Belton on 5/15/21.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
     let workouts = [
        Workout(imageName: "pushup01", title: "Push-Up", duration: "30 sec"),
        Workout(imageName: "situp", title: "Sit-Ups", duration: "45 sec"),
        Workout(imageName: "squat01", title: "Squats", duration: "60 sec"),
        Workout(imageName: "legRaise", title: "Leg Raise", duration: "30 sec"),
        Workout(imageName: "jog", title: "Jog", duration: "15 min")
    ]
    
    func getWorkouts() -> [Workout] {
        return workouts
    }
    
     let stretches = [
    Workout(imageName: "stretch01", title: "Leaning Mountain", duration: "60 sec"),
        Workout(imageName: "stretch02", title: "Lunge", duration: "60 sec"),
        Workout(imageName: "stretch03", title: "Scorpion", duration: "60 sec"),
        Workout(imageName: "stretch04", title: "Reaching Lunge", duration: "60 sec"),
        Workout(imageName: "stretch05", title: "Quad Pull", duration: "60 sec")
    ]
    
    

    func getStretches() -> [Workout] {
        return stretches
    }
    
}
