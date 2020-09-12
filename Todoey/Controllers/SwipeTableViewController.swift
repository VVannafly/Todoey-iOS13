//
//  SwipeTableViewController.swift
//  Todoey
//
//  Created by Dmitriy Chernov on 12.09.2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import UIKit

class SwipeTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    //TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
         
         return cell
     }
    

    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        
        return .delete
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.updateModel(at: indexPath)

        }
        tableView.deleteRows(at: [indexPath], with: .fade)
    }

    func updateModel(at indexPath: IndexPath) {
        //Update our model
    }
}
