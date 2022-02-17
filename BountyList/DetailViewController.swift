//
//  DetailViewController.swift
//  BountyList
//
//  Created by 최지우 on 2022/02/12.
//

import UIKit

class DetailViewController: UIViewController {
    
    // MVVM
    
    // -Model
    // BountyInfo
    
    // -View
    // imgView, nameLabel, bountylabel
    
    // -ViewModel
    // DetailViewModel
    
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    
    
    let viewModel = DetailVIewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }
   
    
    func updateUI() {
        
        if let bountyInfo = self.viewModel.bountyInfo {
            imgView.image = bountyInfo.image
            nameLabel.text = bountyInfo.name
            bountyLabel.text = "\(bountyInfo.bounty)"
        }
        
        
        
}
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

class DetailVIewModel {
    var bountyInfo: BountyInfo?
    
    func update(model: BountyInfo?) {
        bountyInfo = model
    }
}
