//
//  FirstViewController.swift
//  V2LparJson
//
//  Created by Jake Berberich on 12/28/17.
//  Copyright © 2017 Jake Berberich. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var chooseSort: UISegmentedControl!
    
    var sortOption:String = "default"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func chooseSortValue(_ sender: Any) {
        
        switch chooseSort.selectedSegmentIndex {
        case 0:
            sortOption = "lpar"
        case 1:
            sortOption = "hmc"
        case 2:
            sortOption = "application"
        case 3:
            sortOption = "environment"
        case 4:
            sortOption = "server"
        default:
            sortOption = "lpar"
        }
        
        // print(sortOption)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard     let lparSubfileVC = segue.destination as? LparSubfileVC else {return}
        
        lparSubfileVC.sortValue = sortOption
        
    }
    
    
}
