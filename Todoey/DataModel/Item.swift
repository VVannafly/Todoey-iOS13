//
//  Item.swift
//  Todoey
//
//  Created by Dmitriy Chernov on 12.09.2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: Date?


    //initializing parent relationship
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
