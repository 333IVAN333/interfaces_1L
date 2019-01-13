//
//  GroupsAllTableViewController.swift
//  1L_IvanGolub
//
//  Created by Ivan Golub on 28/12/2018.
//  Copyright © 2018 Ivan Golub. All rights reserved.
//

import UIKit

class GroupsAllTableViewController: UIViewController{

    var allGroups: [Group] = [Group(1, "Герои Руси", "group1"), Group(2, "Происшествия тридевятого царства", "group2")]
//    let allGroups: [String] = ["Группа 1", "Группа 2", "Группа 3"]
    @IBOutlet weak var groupsTableView: UITableView!
    @IBOutlet weak var groupSearchBar: UISearchBar!
    private var filterSearchText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        groupSearchBar.delegate = self

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }


}

extension GroupsAllTableViewController:  UITableViewDelegate, UITableViewDataSource{
    
    // MARK: - Table view data source
    
    func tableView(_ tableView: UITableView,
                   heightForRowAt indexPath: IndexPath) -> CGFloat{
        
        let tempItemGroup = allGroups[indexPath.row]
        
        let nameGroup: String = tempItemGroup.name
        var heightRow: CGFloat = 0
        let heightRowDefault: CGFloat = 66
        
        if filterSearchText.isEmpty {
            heightRow = heightRowDefault
        }else if nameGroup.lowercased().contains(filterSearchText.lowercased()) {
            heightRow = heightRowDefault
        }
        
        return heightRow
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return allGroups.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groupCell2", for: indexPath)
//
            if let cellTemp = cell as? GroupTableViewCell2 {
                
                let tempItemGroup = allGroups[indexPath.row]
                
                cellTemp.groupNameLabel.text = tempItemGroup.name
                cellTemp.groupImageView.image = UIImage(imageLiteralResourceName: tempItemGroup.nameImageResourceFile)
                
                //cellTemp.isHidden = true
        }
        
        return cell
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
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
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
}

extension GroupsAllTableViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar,
                   textDidChange searchText: String){
        filterSearchText = searchText
        groupsTableView.reloadData()
    }
}
