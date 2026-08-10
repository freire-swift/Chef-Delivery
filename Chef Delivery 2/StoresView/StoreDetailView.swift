//
//  StoreDetailView.swift
//  Chef Delivery 2
//
//  Created by Pedro Henrique Freire de Oliveira on 06/08/26.
//

import SwiftUI

struct StoreDetailView: View {
    
    let store: StoreType
    
    var body: some View {
        Text(store.name)
    }
}

#Preview {
    StoreDetailView(store: storesMock[0])
}
