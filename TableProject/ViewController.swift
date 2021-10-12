//
//  ViewController.swift
//  TableProject
//
//  Created by Justin Bell on 10/12/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    let tableViewData = Array(repeating: "Item", count: 100)
    
    let secondaryArray = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "TableviewCell") //askkkkkk
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.secondaryArray.count //self.tableViewData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableviewCell", for: indexPath)
        
        //cell.textLabel ?? "Unknown" // Nil coalescing
        cell.textLabel?.text = self.secondaryArray[indexPath.row] //self.tableViewData[indexPath.row]
        
        //cell.backgroundColor = .red
        //cell.textLabel?.textColor = .red
        
        return cell
    }
    
}

