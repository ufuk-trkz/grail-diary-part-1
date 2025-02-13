//
//  POlTableViewCell.swift
//  GrailDiary
//
//  Created by Ufuk Türközü on 08.11.19.
//  Copyright © 2019 Ufuk Türközü. All rights reserved.
//

import UIKit

class POlTableViewCell: UITableViewCell {

    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var cluesTextView: UILabel!
    
    var poi: POI? {
       
        didSet {
                updateViews()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
   private func updateViews() {
           guard let poi = poi else { return }
           
           locationLabel.text = poi.location
           countryLabel.text = poi.country
    cluesTableView.text = "\(poi.clues.count)"
       }

}
