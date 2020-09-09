//
//  TodoeyModel.swift
//  Todoey
//
//  Created by Dmitriy Chernov on 08.09.2020.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct Item: Codable {
    var title: String = ""
    var done: Bool = false
    
}
