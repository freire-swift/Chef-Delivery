//
//  OrderTypeGridView.swift
//  Chef Delivery 2
//
//  Created by Pedro Henrique Freire de Oliveira on 07/07/26.
//

import SwiftUI

struct OrderTypeGridView: View {
    
    
    var body: some View {
        LazyHGrid(rows: [
            GridItem(.fixed(100)),
            GridItem(.fixed(100)),
        ]) {
            ForEach(ordersMock) { orderItem in
                Text(orderItem.name)
                }
            }
    }
}

#Preview {
    OrderTypeGridView()
}
