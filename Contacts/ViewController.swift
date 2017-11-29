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
    let twoDimensionalArray = [["Amy", "Bill", "Zack", "Steve", "Jack"], ["Carl", "Chris", "Christina", "Cameron"], ["David", "Dan"]]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "ShowIndexPath", style: .plain, target: self, action: #selector(handleShowIndexPath))
        
        navigationItem.title = "Contacts"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    @objc func handleShowIndexPath() {
        print("Attempting reload animation of indexPaths...")
        
    }
    
    // MARK: -  TableView
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return twoDimensionalArray[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        let name = twoDimensionalArray[indexPath.section][indexPath.row]
        cell.textLabel?.text = name
        cell.textLabel?.text  = "\(name) Section: \(indexPath.section) Row: \(indexPath.row)"
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return twoDimensionalArray.count
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let label = UILabel()
        label.text = "Header"
        label.backgroundColor = UIColor.lightGray
        return label
    }


}

