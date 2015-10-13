//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Jonathan Lu on 10/12/15.
//  Copyright © 2015 Jonathan Lu. All rights reserved.
//

import Foundation

class ChecklistItem {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}

