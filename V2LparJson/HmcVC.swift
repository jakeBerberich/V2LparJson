//
//  HmcVC.swift
//  V2LparJson
//
//  Created by Jake Berberich on 12/28/17.
//  Copyright © 2017 Jake Berberich. All rights reserved.
//
import Foundation
import UIKit

class HmcVC: UITableViewController {

    var newHmcArray = hmcArray
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return newHmcArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // Configure the cell...
        
        //   let serverEntity = self.serverList(indexPath.row)
        
        cell.textLabel?.text  = "\(newHmcArray[indexPath.row].hmc)"
        cell.detailTextLabel?.text = "IP Address: \(newHmcArray[indexPath.row].ipAddress)   "
        return cell
    }
    
    
    
    
}
