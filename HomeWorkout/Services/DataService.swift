//
//  DataService.swift
//  HomeWorkout
//
//  Created by Spencer Belton on 5/15/21.
//

import Foundation

class DataService {
    
    static let instance = DataService()
    
    private let categories = [
        Category(title: "ARMS"),
        Category(title: "BACK"),
        Category(title: "CHEST"),
        Category(title: "CORE"),
        Category(title: "LEGS")
    ]
    
    private let armWorkouts = [
        Workout(imageName: "pushup01", title: "ARM", duration: "30 sec"),
        Workout(imageName: "pushup01", title: "ARM", duration: "30 sec"),
        Workout(imageName: "pushup01", title: "ARM", duration: "30 sec")
    ]
    private let backWorkouts = [
        Workout(imageName: "pushup01", title: "BACK", duration: "30 sec"),
        Workout(imageName: "pushup01", title: "BACK", duration: "30 sec"),
        Workout(imageName: "pushup01", title: "BACK", duration: "30 sec")
    ]
    private let chestWorkouts = [
        Workout(imageName: "pushup01", title: "CHEST", duration: "30 sec"),
        Workout(imageName: "pushup01", title: "CHEST", duration: "30 sec"),
        Workout(imageName: "pushup01", title: "CHEST", duration: "30 sec")
    ]
    private let coreWorkouts = [
        Workout(imageName: "pushup01", title: "CORE", duration: "30 sec"),
        Workout(imageName: "pushup01", title: "CORE", duration: "30 sec"),
        Workout(imageName: "pushup01", title: "CORE", duration: "30 sec")
    ]
    private let legWorkouts = [
        Workout(imageName: "pushup01", title: "LEG", duration: "30 sec"),
        Workout(imageName: "pushup01", title: "LEG", duration: "30 sec"),
        Workout(imageName: "pushup01", title: "LEG", duration: "30 sec")
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
    func getArmWorkouts() -> [Workout] {
        return armWorkouts
    }
    func getBackWorkouts() -> [Workout] {
        return backWorkouts
    }
    func getChestWorkouts() -> [Workout] {
        return chestWorkouts
    }
    func getCoreWorkouts() -> [Workout] {
        return coreWorkouts
    }
    func getLegWorkouts() -> [Workout] {
        return legWorkouts
    }
    
    func getWorkouts(forCategory title: String) -> [Workout] {
        switch title {
        case "ARMS":
            return getArmWorkouts()
        case "BACK":
            return getBackWorkouts()
        case "CHEST":
            return getChestWorkouts()
        case "CORE":
            return getCoreWorkouts()
        case "LEGS":
            return getLegWorkouts()
        default: return getArmWorkouts()
        }
    }
}
