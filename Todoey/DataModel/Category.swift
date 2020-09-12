//
//  Category.swift
//  Todoey
//
//  Created by Dmitriy Chernov on 12.09.2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""

    //reference to Item class
    let items = List<Item>()
}
