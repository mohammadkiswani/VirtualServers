//
//  TableViewCell.swift
//  VirtualServers
//
//  Created by Mohamed on 9/11/19.
//  Copyright © 2019 Mohamed. All rights reserved.
//

import UIKit

final class TableViewCell: UITableViewCell {
    
    // MARK:- Outlet
    
    @IBOutlet weak var vioImage: UILabel!
    @IBOutlet weak var borderView: UIView!
    @IBOutlet weak var diagramPhoto: UIImageView!
    @IBOutlet weak var grayView: UIView!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var poolLable: UILabel!
    @IBOutlet weak var versionLable: UILabel!
    @IBOutlet weak var NameLable: UILabel!
    
    // MARK:- Lifecycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        redView.layer.cornerRadius = redView.frame.size.width / 2
        grayView.layer.cornerRadius = grayView.frame.size.width / 2
        redView.layer.borderWidth = 2
        redView.layer.borderColor = UIColor.white.cgColor
        borderView.layer.borderWidth = 1
        borderView.layer.borderColor = UIColor.lightGray.cgColor
        vioImage.isHidden = true
        vioImage.layer.cornerRadius = vioImage.frame.size.height / 4
        
    }
        override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
