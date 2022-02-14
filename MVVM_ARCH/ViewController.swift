//
//  ViewController.swift
//  MVVM_ARCH
//
//  Created by Lokesh on 14/02/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet var tableView : UITableView!
    var modelRec = [
        RecordsModel(firstName: "Geet", lastName: "dave", age: 30, gender: "M"),
        RecordsModel(firstName: "Deep", lastName: "rave", age: 30, gender: "M"),
        RecordsModel(firstName: "Keep", lastName: "awake", age: 30, gender: "M")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.cellIdentify)
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return modelRec.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier:CustomTableViewCell.cellIdentify, for: indexPath) as! CustomTableViewCell
        // model objects
        let model = modelRec[indexPath.row]
     
        //view model object
        cell.configuration(with: RecordsViewModel(firstName: model.firstName, lastName: model.lastName))
        
         return cell
     }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

