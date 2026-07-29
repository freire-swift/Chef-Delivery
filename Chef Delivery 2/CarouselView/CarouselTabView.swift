//
//  CarouselTabView.swift
//  Chef Delivery 2
//
//  Created by Pedro Henrique Freire de Oliveira on 28/07/26.
//

import SwiftUI

struct CarouselTabView: View {
    
    let ordersMock: [OrderType] = [
        OrderType(id: 0, name: "banner churras", image: "barbecue-banner"),
        OrderType(id: 1, name: "banner prato feito", image: "brazilian-meal-banner"),
        OrderType(id: 2, name: "banner poke", image: "pokes-banner"),
    ]
    
    var body: some View {
        TabView {
            ForEach(ordersMock) { mock in
                CarouselItemView(order: mock)
            }
            
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    CarouselTabView()
}
