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
    
    func save(taskLists: [TaskList]) {
        try! realm.write {
            realm.add(taskLists)
            print("All good")
        }
    }
}
