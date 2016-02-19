//
//  GitCell.swift
//  GithubDemo
//
//  Created by Md Miah on 2/14/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class GitCell: UITableViewCell {
    
    @IBOutlet weak var repoImage: UIImageView!
    @IBOutlet weak var repoDesc: UILabel!
    @IBOutlet weak var repoFork: UILabel!
    @IBOutlet weak var repoStar: UILabel!
    @IBOutlet weak var repoAuthor: UILabel!
    @IBOutlet weak var repoName: UILabel!
    var repo: GithubRepo! {
        didSet {
            repoName.text = repo.name
            repoDesc.text = repo.repoDescription
            repoFork.text = "\(repo.forks!)"
            repoStar.text = "\(repo.stars!)"
            repoAuthor.text = repo.ownerHandle
            repoImage.setImageWithURL(NSURL(string: repo.ownerAvatarURL!)!)
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        repoImage.layer.cornerRadius = 3
        repoImage.clipsToBounds = true
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
