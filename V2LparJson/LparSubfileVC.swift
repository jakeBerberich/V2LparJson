//
//  LparSubfileVC.swift
//  V2LparJson
//
//  Created by Jake Berberich on 12/28/17.
//  Copyright © 2017 Jake Berberich. All rights reserved.
//

import UIKit

class LparSubfileVC: UITableViewController {
    
    var lparArray = [Lpars]()
    var sortValue: String = "setupValue"

    override func viewDidLoad() {
        super.viewDidLoad()
        getJson()
        sortLpars()
    }
    func getJson() {
        
        let path = Bundle.main.path(forResource: "lparImport", ofType: "json")
        let url = URL(fileURLWithPath: path!)
        print(url)
        // --------- decode json
        do {
            let data = try Data(contentsOf: url)
            print(data)
            let lparList = try JSONDecoder().decode([Lpars].self, from: data)
            
            for systems in lparArray {
                print(systems.lparName1)
                lparArray = lparList
                print(lparArray[0].lparDescription)
            }
            
        }
        catch{ print("error")
        }
        // ----------end decode json
    }  // end get Json
    
    func sortLpars() {
        switch sortValue {
        case "lpar":
            lparArray.sort(by: { $0.lparName1 <  $1.lparName1})
        case "hmc":
            lparArray.sort(by: { $0.hmc <  $1.hmc})
        case "application":
            lparArray.sort(by: { $0.application <  $1.application})
        case "environment":
            lparArray.sort(by: { $0.environment <  $1.environment})
        case "server":
            lparArray.sort(by: { $0.server <  $1.server})
        default:
            lparArray.sort(by: { $0.lparName1 <  $1.lparName1})
        }
        
        
    }
 

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return lparArray.count
        
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
