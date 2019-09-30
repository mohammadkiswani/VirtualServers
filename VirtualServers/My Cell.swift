//
//  My Cell.swift
//  VirtualServers
//
//  Created by Mohamed on 9/11/19.
//  Copyright © 2019 Mohamed. All rights reserved.
//

import Foundation
final class informationArraySection {
    var Name :String
    var Version : String
    var Pool :String
    var number :String
    var isConnected = false
    var isHidden = false
    var isBlack = true
    init(Name:String ,version:String , Pool:String , number:String){
        self.Name = Name
        self.Version = version
        self.Pool = Pool
        self.number = number
        
    }
}
