//
//  ExpandableNames.swift
//  Contacts
//
//  Created by User on 12/4/17.
//  Copyright © 2017 User. All rights reserved.
//

import Foundation
import Contacts

struct ExpandableNames {
    
    var isExpanded: Bool
    var names: [Contact]
}

struct Contact {
    
    let contact: CNContact
    var hasFavorited: Bool
}
