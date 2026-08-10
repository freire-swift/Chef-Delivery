//
//  StoreType.swift
//  Chef Delivery 2
//
//  Created by Pedro Henrique Freire de Oliveira on 10/08/26.
//

import Foundation

struct StoreType: Identifiable {
    let id: Int
    let name: String
    let logoImage: String
    let headerImage: String
    let location: String
    let stars: Int
    let products: [ProductType]
}
