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
    var twoDimensionalArray = [ExpandableNames(isExpanded: true, names: ["Amy", "Bill", "Zack", "Steve", "Jack"]),
                                              ExpandableNames(isExpanded: true, names: ["Carl", "Chris", "Christina", "Cameron"]),
                                                              ExpandableNames(isExpanded: true, names: ["David", "Dan"])]
    var showIndexPath = false

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
        var indexPathsToReload = [IndexPath]()
        
        // build all the indexParths to reload
            for section in twoDimensionalArray.indices {
                for row in twoDimensionalArray[section].indices {
                    print(section, row)
                    let indexPath = IndexPath(row: row, section: section)
                    indexPathsToReload.append(indexPath)
                }
        }
        showIndexPath = !showIndexPath
        
        let animationStyle = showIndexPath ? UITableViewRowAnimation.right : .left
        tableView.reloadRows(at: indexPathsToReload, with: animationStyle)
    }
    
    @objc func handleExpandClose(button: UIButton) {
        print("Trying to expand and close section...")
        
        let section = button.tag
        var indexPaths = [IndexPath]()
        for row in twoDimensionalArray[section].indices {
            print(0, row)
            let indexPath = IndexPath(row: row, section: section)
            indexPaths.append(indexPath)
        }
        twoDimensionalArray[section].removeAll()
        tableView.deleteRows(at: indexPaths, with: .fade)
    }
    
    // MARK: -  TableView
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return twoDimensionalArray[section].count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        let name = twoDimensionalArray[indexPath.section][indexPath.row]
        cell.textLabel?.text = name
        
        if showIndexPath {
            cell.textLabel?.text  = "\(name) Section: \(indexPath.section) Row: \(indexPath.row)"
        }
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return twoDimensionalArray.count
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let button = UIButton(type: .system)
        button.setTitle("Close", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .yellow
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.tag = section
        
        button.addTarget(self, action: #selector(handleExpandClose), for: .touchUpInside)
        return button
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 36
    }


}

