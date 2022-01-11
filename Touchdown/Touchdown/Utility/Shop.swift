//
//  Shop.swift
//  Touchdown
//
//  Created by Daulet on 20.11.2021.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
