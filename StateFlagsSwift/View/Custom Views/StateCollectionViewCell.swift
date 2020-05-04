//
//  StateCollectionViewCell.swift
//  StateFlagsSwift
//
//  Created by Bryce Bradshaw on 5/4/20.
//  Copyright © 2020 Bryce Bradshaw. All rights reserved.
//

import UIKit

class StateCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Oulets
    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    // MARK: - Properties
    var state: State? {
        didSet{
            updateViews()
        }
    }
    
    func updateViews() {
        guard let state = state else { return }
        self.flagImageView.image = UIImage(named: state.abbreviation)
        self.nameLabel.text = state.name
        
    }
}
