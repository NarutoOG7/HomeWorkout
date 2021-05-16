//
//  ViewController.swift
//  HomeWorkout
//
//  Created by Spencer Belton on 5/15/21.
//

import UIKit

class WorkoutsVC: UIViewController {

    @IBOutlet weak var workoutsCollectionView: UICollectionView!
    @IBOutlet weak var switchExercise: UISwitch!
    
    private(set) public var workouts = [Workout]()
    private(set) public var stretches = [Workout]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        workoutsCollectionView.dataSource = self
        workoutsCollectionView.delegate = self
    }

    func initWorkouts(workout: Workout) {
        workouts = DataService.instance.getWorkouts()
    }
    func initStretches(stretch: Workout) {
        stretches = DataService.instance.getStretches()
    }

    @IBAction func switchPressed(_ sender: UISwitch) {

        
        reloadData()
    }
    
    func reloadData() {
        DispatchQueue.main.async {
            self.workoutsCollectionView.reloadData()
        }
    }
}

//MARK: - CollectionView DataSource

extension WorkoutsVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataService.instance.getWorkouts().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WorkoutCell", for: indexPath) as? WorkoutCell {
            if switchExercise.isOn {
                let workout = DataService.instance.getWorkouts()[indexPath.row]
                cell.updateViews(workout: workout)
            } else {
                let stretch = DataService.instance.getStretches()[indexPath.row]
                cell.updateViews(workout: stretch)
            }
            return cell
        } else {
            return WorkoutCell()
        }
    }
}

//MARK: - CollectionView Delegate

extension WorkoutsVC: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let width: CGFloat = view.bounds.width / 2 - 20
//        let height: CGFloat = width + 20
//        return CGSize(width: width, height: height)
//    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width: CGFloat = view.bounds.width / 2 - 6
        let height: CGFloat = 300
        return CGSize(width: width, height: height)
    }
}

