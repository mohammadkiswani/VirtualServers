//
//  ViewController.swift
//  VirtualServers
//
//  Created by Mohamed on 9/9/19.
//  Copyright © 2019 Mohamed. All rights reserved.
//

import UIKit
final class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet weak var cycleBut: UIButton!
    @IBOutlet weak var nnnn : UIButton!
    @IBOutlet private weak var tableView: UITableView!
    var ar = [myArray(Name: "Mohammad", version: "9.9..92.1", Pool: "Pool:Firstpool" , number: "4G-25"),
              myArray(Name: "Create-advanced2clip",version: "9.9..92.1", Pool: "Pool:Firstpool" , number:"All Ports"),
              myArray(Name: "Kiswani", version: "155.125.155.125", Pool: "Pool:N/A" ,number:"4G-25"),
              myArray(Name: "Safaa", version: "155.125.155.125", Pool: "Pool:N/A" , number:"SSH-22" ),
              myArray(Name: "karazoon", version: "155.125.155.125", Pool: "Pool:N/A" , number:"4G-25"),
              myArray(Name: "Farhan", version: "155.125.155.125", Pool: "Pool:N/A", number:"SSH-22"),
              myArray(Name: "Ali", version: "155.125.155.125", Pool: "Pool:N/A", number:"4G-25")]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        cycleBut.layer.cornerRadius = 16.0
        nnnn.layer.cornerRadius = nnnn.frame.size.width / 2
        tableView.rowHeight = 100
        ar[0].isConnected = true
        ar[1].isConnected = true
        ar[1].isHidden = false
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return ar.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.NameLable.text = ar[indexPath.row].Name
        cell.versionLable.text = ar[indexPath.row].Version
        cell.poolLable.text = ar[indexPath.row].Pool
        cell.number.text = ar[indexPath.row].number
        
        if ar[indexPath.row].isConnected == false {
            cell.redView.backgroundColor = UIColor.gray
        }
        if ar[indexPath.row].isHidden == false
        {
            cell.vipImage.image = #imageLiteral(resourceName: "Vip")

        }
        cell.vipImage.layer.cornerRadius = 10.0

        return cell
    }
}





