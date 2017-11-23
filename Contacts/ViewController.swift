//
//  ViewController.swift
//  Contacts
//
//  Created by User on 11/22/17.
//  Copyright © 2017 User. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let cellId = "cellId123123"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        navigationItem.title = "Contacts"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    // MARK: -  TableView
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        cell.textLabel?.text = "Something"
        return cell
    }


}

