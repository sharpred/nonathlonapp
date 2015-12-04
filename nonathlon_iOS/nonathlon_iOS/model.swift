//
//  model.swift
//  nonathlon_iOS
//
//  Created by Paul Ryan on 28/11/2015.
//  Copyright © 2015 Paul Ryan. All rights reserved.
//

import Foundation
import RealmSwift

class Rower: Object {
    dynamic var id = 0
    dynamic var name = ""
    dynamic var weight: Weight!
    dynamic var gender: Gender!
    dynamic var dob: NSDate!
    let scores = List<Score>()
    override static func primaryKey() -> String? {
        return "id"
    }
    
}

class Gender: Object {
    dynamic var id = 0
    dynamic var name = ""
    override static func primaryKey() -> String? {
        return "id"
    }
}

class Weight: Object {
    dynamic var id = 0
    dynamic var name = ""
    dynamic var shortCode = ""
    override static func primaryKey() -> String? {
        return "id"
    }
}

class Distance: Object {
    dynamic var id = 0
    dynamic var name = ""
    dynamic var shortCode = ""
}

class Score: Object {
    dynamic var id = 0
    dynamic var date: NSDate!
    dynamic var distance: Distance!
    dynamic var rower: Rower!
}
