//
//  FeedCell.swift
//  SnapchatProject
//
//  Created by Ceren Çapar on 28.10.2021.
//

import UIKit

class FeedCell: UITableViewCell {
    @IBOutlet weak var feedImageView: UIImageView!
    @IBOutlet weak var feedUsernameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
