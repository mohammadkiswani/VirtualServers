//
//  TableViewCell.swift
//  VirtualServers
//
//  Created by Mohamed on 9/11/19.
//  Copyright © 2019 Mohamed. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var borderView: UIView!
    @IBOutlet weak var vipImage: UIImageView!
    @IBOutlet weak var grayView: UIView!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var poolLable: UILabel!
    @IBOutlet weak var versionLable: UILabel!
    @IBOutlet weak var NameLable: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        redView.layer.cornerRadius = redView.frame.size.width / 2
        grayView.layer.cornerRadius = grayView.frame.size.width / 2
        borderView.layer.borderWidth = 1
        borderView.layer.borderColor = UIColor.gray.cgColor
    }
    
}
