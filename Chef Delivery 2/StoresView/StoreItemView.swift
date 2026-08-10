//
//  StoreItemView.swift
//  Chef Delivery 2
//
//  Created by Pedro Henrique Freire de Oliveira on 28/07/26.
//

import SwiftUI

struct StoreItemView: View {
    
    let store: StoreType
    
    var body: some View {
        HStack{
            Image(store.logoImage)
                .resizable()
                .scaledToFit()
                .presentationCornerRadius(25)
                .frame(width: 50, height: 50)
            Text(store.name)
                .font(.subheadline)
            Spacer()
        }
    }
}

#Preview {
    StoreItemView(store: storesMock[0])
}
