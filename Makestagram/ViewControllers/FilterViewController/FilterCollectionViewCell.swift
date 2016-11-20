//
//  FilterCollectionViewCell.swift
//  Makestagram
//
//  Created by Olivia Brown on 6/26/16.
//  Copyright © Olivia Brown for Make School. All rights reserved.
//

import UIKit

class FilterCollectionViewCell: UICollectionViewCell {
  
  @IBOutlet weak var filterLabel: UILabel!
  @IBOutlet weak var filterPreviewImage: UIImageView!

  var filter: Filter? {
    didSet {
      if let filter = filter {
        filterLabel.text = filter.filterName
        filterPreviewImage.image = UIImage(named: filter.filterPreviewImageFile)
      }
    }
  }
  
}
