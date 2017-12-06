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
        
        // kind of cheat and use a hack
        let startButton = UIButton(type: .system)
        startButton.setImage(#imageLiteral(resourceName: "fav_star"), for: .normal)
        startButton.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        startButton.tintColor = .red
        
        startButton.addTarget(self, action: #selector(handleMarkAsFavorite), for: .touchUpInside)
        accessoryView = startButton
    }
    
    @objc private func handleMarkAsFavorite() {
        print("Marking as favorite")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
