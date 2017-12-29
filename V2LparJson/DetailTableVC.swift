//
//  DetailTableVC.swift
//  V2LparJson
//
//  Created by Jake Berberich on 12/28/17.
//  Copyright © 2017 Jake Berberich. All rights reserved.
//

import Foundation
import UIKit

class DetailTableVC: UITableViewController {
 
    
    var lparDetail = Lpars()
    
    
    // populated via segue
    
    @IBOutlet weak var serverNameHmcPartition: UILabel!
    
    @IBOutlet weak var lparName: UILabel!
    @IBOutlet weak var serialNumber: UILabel!
    @IBOutlet weak var modelFeatureGroup: UILabel!
    @IBOutlet weak var application: UILabel!
    @IBOutlet weak var enviroment: UILabel!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var powerClass: UILabel!
    @IBOutlet weak var modelGroup: UILabel!
    @IBOutlet weak var os400: UILabel!
    @IBOutlet weak var storage: UILabel!
    @IBOutlet weak var processorsCurrent: UILabel!
    @IBOutlet weak var comments: UILabel!
    @IBOutlet weak var audit: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        lparName.text = ("\(lparDetail.lparName1) ")
        serverNameHmcPartition.text = ("Server: \(lparDetail.server)   Partition ID:  \(lparDetail.partitionID)")
        serialNumber.text = ("Serial #:  \(lparDetail.serialNumber)    HMC: \(lparDetail.hmc)")
        modelFeatureGroup.text = ("Model \(lparDetail.model)  System Type: \(lparDetail.systemType)")
        
        application.text = lparDetail.application
        enviroment.text = lparDetail.environment
        modelGroup.text = ("P Group:  \(lparDetail.pGroup)")
        os400.text = lparDetail.os400
        storage.text = ("DASD:  \(lparDetail.mainStorage)  Memory:  \(lparDetail.auxStorage)")
       comments.text = lparDetail.comments
        audit.text = ("External: \(lparDetail.auditExternal)    Internal: \(lparDetail.auditInternal)")
processorsCurrent.text = ("Processors:  \(lparDetail.processors)")
        
        
        
        switch lparDetail.server {
        case "Bishop" :
            city.text = bishop.dataCenter
            location.text = ("Rack: \( bishop.rackLocation)")
            powerClass.text =  bishop.ibmPowerClass
            
        case "Chappie":
            city.text = chappie.dataCenter
            location.text = ("Rack: \( chappie.rackLocation)")
            powerClass.text =  chappie.ibmPowerClass
            
        case "Gort":
            city.text = gort.dataCenter
            location.text = ("Rack: \( gort.rackLocation)")
            powerClass.text =  gort.ibmPowerClass
            
        case "Sonny":
            city.text = sonny.dataCenter
            location.text = ("Rack: \( sonny.rackLocation)")
            powerClass.text =  sonny.ibmPowerClass
            
        case "Fsm" :
            city.text = fsm.dataCenter
            location.text = ("Rack: \( fsm.rackLocation)")
            powerClass.text =  fsm.ibmPowerClass
            
        case "Rosie":
            city.text = rosie.dataCenter
            location.text = ("Rack: \( rosie.rackLocation)")
            powerClass.text =  rosie.ibmPowerClass
            
        case "Bernie" :
            city.text = bernie.dataCenter
            location.text = ("Rack: \( bernie.rackLocation)")
            powerClass.text =  bernie.ibmPowerClass
            
        case "DCX":
            city.text = dcx.dataCenter
            location.text = ("Rack: \( dcx.rackLocation)")
            powerClass.text =  dcx.ibmPowerClass
            
        default:
            city.text = "location not defined"
            
        }
        
        
    }
    
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
        
        
        
    }
    
    func loadDetail() {
        
        
    }
}
