//
//  LanguageCell.swift
//  GithubDemo
//
//  Created by Md Miah on 2/19/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class LanguageCell: UITableViewCell {

    @IBOutlet weak var searchSwitch: UISwitch!
    @IBOutlet weak var languageLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
