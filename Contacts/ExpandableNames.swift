//
//  ExpandableNames.swift
//  Contacts
//
//  Created by User on 12/4/17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation

struct ExpandableNames {
    
    var isExpanded: Bool
    let names: [Contact]
}

struct Contact {
    
    let name: String
    var hasFavorited: Bool
}
