//
//  ViewController.swift
//  HomeWorkout
//
//  Created by Spencer Belton on 5/15/21.
//

import UIKit

class WorkoutsVC: UIViewController {

    @IBOutlet weak var workoutsCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

//MARK: - CollectionView DataSource

extension WorkoutsVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
}

//MARK: - CollectionView Delegate

extension WorkoutsVC: UICollectionViewDelegate {
    
}
