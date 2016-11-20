//
//  PostSectionHeaderView.swift
//  Makestagram
//
//  Created by Olivia on 6/22/16.
//  Copyright © Olivia Brown for Make School. All rights reserved.
//

import UIKit

class PostSectionHeaderView: UITableViewCell {

  @IBOutlet weak var postTimeLabel: UILabel!
  @IBOutlet weak var usernameLabel: UILabel!

  var post: Post? {
    didSet {
      if let post = post {
        usernameLabel.text = post.user?.username
        // 1
        postTimeLabel.text = post.createdAt?.shortTimeAgoSinceDate(NSDate()) ?? ""
      }
    }
  }
}
