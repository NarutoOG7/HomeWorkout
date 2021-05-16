//
//  ViewController.swift
//  HomeWorkout
//
//  Created by Spencer Belton on 5/15/21.
//

import UIKit

class WorkoutsVC: UIViewController {

    @IBOutlet weak var workoutsCollectionView: UICollectionView!
    
    private(set) public var workouts = [Workout]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        workoutsCollectionView.dataSource = self
        workoutsCollectionView.delegate = self
    }

    func initWorkouts(workout: Workout) {
        workouts = DataService.instance.getWorkouts()
    }

}

//MARK: - CollectionView DataSource

extension WorkoutsVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataService.instance.getWorkouts().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WorkoutCell", for: indexPath) as? WorkoutCell {
            let workout = DataService.instance.getWorkouts()[indexPath.row]
            cell.updateViews(workout: workout)
            return cell
        } else {
            return WorkoutCell()
        } /*
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WorkoutCell", for: indexPath) as! WorkoutCell
        let workout = workouts[indexPath.row]
        cell.updateViews(workout: workout)
        return cell */
    }
    
    
    
}

//MARK: - CollectionView Delegate

extension WorkoutsVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width: CGFloat = view.bounds.width / 2 - 20
        let height: CGFloat = width + 20
//        let area: CGFloat = view.bounds.width * view.bounds.height
//        let count: CGFloat = CGFloat(DataService.instance.getWorkouts().count)
//        let section: CGFloat = area / count
//        let width: CGFloat = section / 2
//        let height: CGFloat = section / 2
        return CGSize(width: width, height: height)
    }
}
