import UIKit
final class VirtualServer: UIViewController {
    // MARK:- Outlet
    @IBOutlet weak var nodels: UIButton!
    @IBOutlet weak var slider: UIButton!
    @IBOutlet weak var slider1: UIButton!
    @IBOutlet weak var pool: UIButton!
    @IBOutlet weak var virtual: UIButton!
    @IBOutlet weak var viewFirst: UIView!
    @IBOutlet private weak var corner: UIButton!
    @IBOutlet private weak var addButton: UIButton!
    @IBOutlet private weak var informationTable: UITableView!
    @IBOutlet private weak var viewShadow: UIView!
    
    // MARK:- Properties
    @IBAction func addCell(_ sender: UIButton) {
        insertNewCell()
    }
    func insertNewCell(){
        informationArray.append(informationArraySection.init(Name: "firas ", version: "9.9..92.1", Pool: "Pool: N/A", number: "4G-25"))
        let indexPath = IndexPath(row: informationArray.count - 1 , section: 0)
        informationTable.endUpdates()
        informationTable.insertRows(at:[indexPath], with: .automatic)
        informationTable.endUpdates()
        view.endEditing(true )
    }
//    @IBAction func slidertabbed (_sender:UIButton){ code}
    @IBAction func sloiderTapped(_ sender: UIButton) {
        if sender.tag == 0 {
            slider.backgroundColor = UIColor.black
            slider1.backgroundColor = .clear
            
        }
        else if sender.tag == 1 {
            slider1.backgroundColor = UIColor.black
            slider.backgroundColor = .clear
        }
            }
//    @IBAction fund nameAction(_sender: UIButton){}
    @IBAction func kkkkk(_ sender: UIButton) {
        if  sender.tag == 0 {
            virtual.backgroundColor = UIColor.init(displayP3Red: 64/255 , green: 71/255 , blue: 97/255, alpha: 1)
            pool.backgroundColor = .clear
            nodels.backgroundColor = .clear
            virtual.setTitleColor(.white, for: .normal)
            pool.setTitleColor(.black, for: .normal)
            nodels.setTitleColor(.black, for: .normal)
            virtual.layer.cornerRadius = virtual.frame.size.height / 2
            
        } else if sender.tag == 1 {
            pool.backgroundColor = UIColor.init(displayP3Red: 64/255 , green: 71/255 , blue: 97/255, alpha: 1)
            virtual.backgroundColor = .clear
            nodels.backgroundColor = .clear
            pool.setTitleColor(.white, for: .normal)
            nodels.setTitleColor(.black, for: .normal)
            virtual.setTitleColor(.black, for: .normal)
            pool.layer.cornerRadius = pool.frame.size.height / 2
            
        } else if sender.tag == 2 {
            nodels.backgroundColor = UIColor.init(displayP3Red: 64/255 , green: 71/255 , blue: 97/255, alpha: 1)
            pool.backgroundColor = .clear
            virtual.backgroundColor = .clear
            nodels.setTitleColor(.white, for: .normal)
            virtual.setTitleColor(.black, for: .normal)
            pool.setTitleColor(.black, for: .normal)
            nodels.layer.cornerRadius = nodels.frame.size.height / 2
        }
    }
    var informationArray = [informationArraySection(Name: "Mohammad", version: "9.9..92.1", Pool: "Pool: Firstpool" , number: "4G-25"),
                            informationArraySection(Name:"Create-advanced2clip",version:"9.9..92.1", Pool: "Pool: Firstpool" , number:"All Ports _ *"),
                            informationArraySection(Name: "Kiswani", version: "155.125.155.125", Pool: "Pool: N/A" , number:"4G-25"),
                            informationArraySection(Name: "Ibrahem", version: "155.125.155.125", Pool: " Pool: N/A" , number:"SSH-22" ),
                            informationArraySection(Name: "Anas", version: "155.125.155.125", Pool: " Pool: N/A" , number:"4G-25"),
                            informationArraySection(Name: "Farhan", version: "155.125.155.125", Pool: " Pool: N/A" , number:"SSH-22"),
                            informationArraySection(Name: "Ali", version: "155.125.155.125", Pool: " Pool: N/A", number:"4G-25"),
                            informationArraySection(Name: "Ahmad", version: "155.125.155.125", Pool: "Pool: N/A ", number: "4G-25")]
        // MARK:- Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        informationTable.delegate = self
        informationTable.dataSource = self
        addButton.layer.cornerRadius = addButton.frame.size.width / 2
        viewFirst.layer.zPosition = 1
        viewShadow.layer.shadowColor = UIColor.black.cgColor
        viewShadow.layer.shadowOffset = .zero
        viewShadow.layer.shadowOpacity = 0.6
        viewShadow.layer.shadowRadius = 2.0
        informationTable.rowHeight = 83.5
        informationArray[0].isConnected = true
        informationArray[1].isConnected = true
        informationArray[0].isBlack = false
        informationArray[1].isBlack = false
        informationArray[1].isHidden = true
        virtual.backgroundColor = UIColor.init(displayP3Red: 64/255 , green: 71/255 , blue: 97/255, alpha: 1)
        virtual.layer.cornerRadius = virtual.frame.size.height / 2
        virtual.setTitleColor(.white, for: .normal)
        slider.backgroundColor = UIColor.black
    }
}
// MARK:-  Extension

extension VirtualServer: UITableViewDataSource , UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return informationArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.NameLable.text = informationArray[indexPath.row].Name
        cell.versionLable.text = informationArray[indexPath.row].Version
        cell.poolLable.text = informationArray[indexPath.row].Pool
        cell.number.text = informationArray[indexPath.row].number
        if informationArray[indexPath.row].isConnected == false {
            cell.redView.backgroundColor = UIColor.lightGray
        }
        if informationArray[indexPath.row].isHidden == true {
            cell.vioImage.isHidden = false
        }
        if informationArray[indexPath.row].isBlack == false {
            cell.diagramPhoto.tintColor = UIColor.black
        }
        else {
            cell.diagramPhoto.tintColor = UIColor.gray
        }
        cell.selectionStyle = UITableViewCell.SelectionStyle.none
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            informationArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .bottom)
        }
    }
    
}


