//
//  movieCell.swift
//  movieViewer
//
//  Created by Victoria Ku on 3/21/17.
//  Copyright © 2017 Codepath. All rights reserved.
//

import UIKit

class movieCell: UITableViewCell {
    @IBOutlet weak var posterView: UIImageView!

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var overviewLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
