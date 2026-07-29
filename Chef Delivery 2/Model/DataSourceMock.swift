//
//  DataSourceMock.swift
//  Chef Delivery 2
//
//  Created by Pedro Henrique Freire de Oliveira on 09/07/26.
//

import Foundation

let ordersMock: [OrderType] = [
    OrderType(id: 1, name: "Restaurantes", image: "hamburguer"),
    OrderType(id: 2, name: "Fármacia", image: "farmacia"),
    OrderType(id: 3, name: "Descontos", image: "descontos"),
    OrderType(id: 4, name: "Gourmet", image: "gourmet"),
    OrderType(id: 5, name: "Mercado", image: "mercado"),
    OrderType(id: 6, name: "Pet", image: "petshop"),
    OrderType(id: 7, name: "Bebidas", image: "bebidas")
]

let storesMock: [OrderType] = [
    OrderType(id: 1, name: "Monstro Burger", image: "monstro-burger-logo"),
    OrderType(id: 2, name: "Food court", image: "food-court-logo"),
    OrderType(id: 3, name: "Carbron", image: "carbron-logo"),
    OrderType(id: 4, name: "Padaria", image: "bakery-logo"),
    OrderType(id: 5, name: "Açai Panda", image: "acai-panda-logo"),
]
