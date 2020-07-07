//
//  StorageManager.swift
//  RealmApp
//
//  Created by Egor Ukolov on 06.07.2020.
//  Copyright © 2020 Egor Ukolov. All rights reserved.
//

import RealmSwift

class StorageManager {
    
    static let shared = StorageManager()
    let realm = try! Realm()
    
    private init() {}
    
    func save(taskList: TaskList) {
        write {
            realm.add(taskList)
        }
    }
    
    func save(task: Task, into taskList: TaskList) {
        write {
            taskList.tasks.append(task)
        }
    }
    
    func delete(taskList: TaskList) {
        write {
            realm.delete(taskList.tasks)
            realm.delete(taskList)
        }
    }
    
    func edit(taskList: TaskList, newValue: String) {
        write {
            taskList.name = newValue
        }
    }
    
    private func write(_ complition: () -> Void) {
        
        do {
            try realm.write {
                complition()
            }
        } catch let error {
            print(error)
        }
        
    }
}
