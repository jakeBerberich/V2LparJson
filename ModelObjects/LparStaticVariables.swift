//
//  LparStaticVariables.swift
//  V2LparJson
//
//  Created by Jake Berberich on 12/28/17.
//  Copyright © 2017 Jake Berberich. All rights reserved.
//

import Foundation

struct lparStatic {
    let server : String
    let dataCenterSide: String
    let rackLocation: String
    let dataCenter: String
    let ibmPowerClass: String
    let serialNum: String
}

let bishop =  lparStatic(server: "Bishop", dataCenterSide: "A", rackLocation: "A3E4", dataCenter: "Greensboro", ibmPowerClass: "Power 8", serialNum: "21-670BW")
let chappie =  lparStatic(server: "Chappie", dataCenterSide: "A", rackLocation: "A3E5", dataCenter: "Greensboro", ibmPowerClass: "Power 8", serialNum: "21-C0AD7" )
let gort =  lparStatic(server: "Gort", dataCenterSide: "B", rackLocation: "A3E5", dataCenter: "Greensboro", ibmPowerClass: "Power 8", serialNum: "10-8D540" )
let sonny =  lparStatic(server: "Sonny", dataCenterSide: "B", rackLocation: "B3E3", dataCenter: "Greensboro", ibmPowerClass: "Power 6" , serialNum: "10-89D42")
let fsm =  lparStatic(server: "FSM01", dataCenterSide: "A", rackLocation: "A1E1", dataCenter: "Greensboro", ibmPowerClass: "Blade" , serialNum: "06-B606B")
let rosie =  lparStatic(server: "Rosie", dataCenterSide: "Central", rackLocation: "*TBD", dataCenter: "High Point", ibmPowerClass: "Power 6", serialNum: "06-B6C74" )
let bernie =  lparStatic(server: "Bernie", dataCenterSide: "Central", rackLocation: "*TBD", dataCenter: "High Point", ibmPowerClass: "Power 7" , serialNum:  "10-6D815")
let dcx =  lparStatic(server: "DCX", dataCenterSide: "Central", rackLocation: "*TBD", dataCenter: "Denver", ibmPowerClass: "Power 6" , serialNum: "OICU812")

let serverFamilyArray = [bishop, chappie, gort, sonny, fsm, rosie, bernie, dcx]

struct hmcStatic {
    let hmc: String
    let ipAddress: String
}
let hmc01 = hmcStatic(hmc: "HMC01", ipAddress: "10.98.32.201")
let hmc02b = hmcStatic(hmc: "HMC02B", ipAddress: "10.98.32.202")
let hmcp8a = hmcStatic(hmc: "HMCP8A", ipAddress: "10.98.32.51")
let hmc05 = hmcStatic(hmc: "HMC05", ipAddress: "10.108.32.12")

let hmcArray = [hmc01, hmc02b, hmcp8a, hmc05]

