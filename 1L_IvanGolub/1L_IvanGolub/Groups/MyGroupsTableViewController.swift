//
//  MyGroupsTableViewController.swift
//  1L_IvanGolub
//
//  Created by Ivan Golub on 28/12/2018.
//  Copyright © 2018 Ivan Golub. All rights reserved.
//

import UIKit

class MyGroupsTableViewController: UITableViewController {

    var myGroups: [Group] = [Group(1, "Герои Руси", "group1")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myGroups.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groupCell", for: indexPath) as! GroupTableViewCell

        let tempItemGroup = myGroups[indexPath.row]
        
        cell.groupNameLabel.text = tempItemGroup.name
        cell.groupImageView.image = UIImage(imageLiteralResourceName: tempItemGroup.nameImageResourceFile)
        
        return cell
    }
    
    @IBAction func addGroup(segue: UIStoryboardSegue) {
        
        if segue.identifier == "addGroup" {
            
            let allGroupsController = segue.source as! GroupsAllTableViewController
            
            let indexPath = allGroupsController.groupsTableView.indexPathForSelectedRow
            let selectedGroup = allGroupsController.allGroups[indexPath!.row]
            
            if(!isContainsGroup(selectedGroup)){
                myGroups.append(selectedGroup)
            }
            
            tableView.reloadData()
        }
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        // Если была нажата кнопка «Удалить»
        if editingStyle == .delete {
            myGroups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    func isContainsGroup(_ group: Group) -> Bool{
        
        for tempItem in myGroups {
            if tempItem.id == group.id {
                return true
            }
        }
        
        return false
    }

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */
}
