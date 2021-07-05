//
//  WorkoutSections.swift
//  HomeWorkout
//
//  Created by Spencer Belton on 7/3/21.
//

import UIKit

protocol WorkoutSectionViewDelegate {
    func reloadCVData(_ title: String)
}

class WorkoutSectionView: UICollectionReusableView {
        
    @IBOutlet weak var armsButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var chestButton: UIButton!
    @IBOutlet weak var coreButton: UIButton!
    @IBOutlet weak var legsButton: UIButton!
    
    var delegate: WorkoutSectionViewDelegate?
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        delegate = nil
    }
    
    @IBAction func anyTapped(_ sender: UIButton) {
        delegate?.reloadCVData(sender.titleLabel?.text ?? "Chest")
    }
}
