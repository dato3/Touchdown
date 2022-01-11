//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Daulet on 19.11.2021.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
