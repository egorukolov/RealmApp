//
//  AlertController.swift
//  RealmApp
//
//  Created by Egor Ukolov on 05.07.2020.
//  Copyright © 2020 Egor Ukolov. All rights reserved.
//

import UIKit

class AlertController: UIAlertController {
    
    func actionWithTaskList(complition: @escaping (String) -> Void) {
        
        let saveAction = UIAlertAction(title: "Save", style: .default) { _ in
            guard let newValue = self.textFields?.first?.text else { return }
            guard !newValue.isEmpty else { return }
            complition(newValue)
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive)
        
        addAction(saveAction)
        addAction(cancelAction)
        
        addTextField { textField in
            textField.placeholder = "Last Name"
            
        }
    }
    
    func actionWithTask(complition: @escaping (String, String) -> Void) {
        
        let saveAction = UIAlertAction(title: "Save", style: .default) { _ in
            guard let newTask = self.textFields?.first?.text else { return }
            guard !newTask.isEmpty else { return }
            
            if let note = self.textFields?.last?.text, !note.isEmpty {
                complition(newTask, note)
            } else {
                complition(newTask, "")
            }
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive)
        
        addAction(saveAction)
        addAction(cancelAction)
        
        addTextField { textField in
            textField.placeholder = "New Task"
        }
        
        addTextField { textField in
            textField.placeholder = "Note"
        }
    }
}

