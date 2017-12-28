//
//  LparStructure.swift
//  V2LparJson
//
//  Created by Jake Berberich on 12/28/17.
//  Copyright © 2017 Jake Berberich. All rights reserved.
//

import Foundation
var blanks = " "
struct Lpars: Codable {
    let lparName1: String
    let lparDescription: String
    let hmc: String
    let server: String
    let serialNumber: String
    let systemType: Int
    let model: String
    let processorFeature: String
    let os400: String
    let processors: Int
    let partitionID: Int
    let auxStorage: Int
    let systemAsp: Int
    let mainStorage: Int
    let totalPartitions: Int
    let application: String
    let environment: String
    let auditExternal: String
    let auditInternal: String
    let buildTime: String
    let comments: String
    let pGroup: String
    
    private enum CodingKeys: String, CodingKey {
        case lparName1 =  "LPAR"
        case lparDescription = "DESCRIPTION"
        case hmc = "HMC"
        case server = "SERVER"
        case serialNumber = "SERIALNUMBER"
        case systemType = "TYPE"
        case model = "MODEL"
        case processorFeature = "PROCESSORFEATURE"
        case os400 = "OS400"
        case processors = "CURRENTPROCESSORS"
        case partitionID = "PARTITIONID"
        case auxStorage = "AUXSTORAGE"
        case systemAsp = "SYSTEMASP"
        case mainStorage = "MAINSTORAGE"
        case totalPartitions = "TOTALPARTITIONS"
        case application = "APPLICATION"
        case environment = "ENVIRONMENT"
        case auditExternal = "AUDITEXTERNAL"
        case auditInternal = "AUDITSELF"
        case buildTime = "BUILDTIME"
        case comments = "COMMENTS"
        case pGroup = "PGROUP"
    }
    init() {
        lparName1 = blanks
       lparDescription = blanks
         hmc = blanks
        server = blanks
        serialNumber = blanks
        systemType = 0
        model = blanks
        processorFeature = blanks
        os400 = blanks
        processors = 0
        partitionID = 0
        auxStorage = 0
        systemAsp = 0
        mainStorage = 0
        totalPartitions = 0
        application = blanks
        environment = blanks
        auditExternal = blanks
        auditInternal = blanks
        buildTime = blanks
        comments = blanks
        pGroup = blanks
    }

    
}
