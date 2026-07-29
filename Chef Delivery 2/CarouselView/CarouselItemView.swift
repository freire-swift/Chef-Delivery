//
//  CarouselItemView.swift
//  Chef Delivery 2
//
//  Created by Pedro Henrique Freire de Oliveira on 28/07/26.
//

import SwiftUI

struct CarouselItemView: View {
    
    let order: OrderType
    
    var body: some View {
        Image(order.image)
            .resizable()
            .scaledToFit()
            .presentationCornerRadius(12)
    }
}

#Preview {
    CarouselItemView(order: OrderType(id: 1,
                                      name: "",
                                      image: "barbecue-banner"))
}
