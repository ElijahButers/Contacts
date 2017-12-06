//
//  ContactCell.swift
//  Contacts
//
//  Created by User on 12/5/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class ContactCell: UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .red
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
