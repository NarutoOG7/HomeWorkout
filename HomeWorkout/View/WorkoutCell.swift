//
//  WorkoutCell.swift
//  HomeWorkout
//
//  Created by Spencer Belton on 5/15/21.
//

import UIKit

class WorkoutCell: UICollectionViewCell {
    
    @IBOutlet weak var workoutImage: UIImageView!
    @IBOutlet weak var workoutTitle: UILabel!
    @IBOutlet weak var wourkoutDuration: UILabel!
    
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var greyView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()

       
    }
    
    func updateViews(workout: Workout) {
        workoutImage.image = UIImage(named: workout.imageName)
        workoutTitle.text = workout.title
        wourkoutDuration.text = workout.duration
        
       // contentView.layer.cornerRadius = 5.0
        orangeView.layer.cornerRadius = 10.0
        greyView.layer.cornerRadius = 10.0
    }
}
