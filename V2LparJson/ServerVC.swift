//
//  ServerVC.swift
//  V2LparJson
//
//  Created by Jake Berberich on 12/28/17.
//  Copyright © 2017 Jake Berberich. All rights reserved.
//

import Foundation
import UIKit

class serverVC: UITableViewController {
    
    // var serverStatic: lparStatic
    // var serverRow: lparStatic
    var serverArray = serverFamilyArray
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return serverArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // Configure the cell...
        
        
        cell.textLabel?.text  = "\(serverArray[indexPath.row].server) :  \(serverArray[indexPath.row].ibmPowerClass)"
        cell.detailTextLabel?.text = " Data Center: \(serverArray[indexPath.row].dataCenter)     Side: \(serverArray[indexPath.row].dataCenterSide)   Rack: \(serverArray[indexPath.row].rackLocation)"
        return cell
    }
    
    
    
    
}
