//
//  TasksViewController.swift
//  RealmApp
//
//  Created by Egor Ukolov on 04.07.2020.
//  Copyright © 2020 Egor Ukolov. All rights reserved.
//

import UIKit

class TasksViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func editButtonPressed(_ sender: Any) {
    }
    
    @IBAction func addButtonPresed(_ sender: Any) {
        showAlert()
    }
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TasksCell", for: indexPath)

        return cell
    }

}

extension TasksViewController {
    
    private func showAlert() {
        
        let alert = AlertController(title: "New Task", message: "What do you want to do", preferredStyle: .alert)
        alert.actionWithTask { newValue, note in
        }
        present(alert, animated: true)
    }
}
