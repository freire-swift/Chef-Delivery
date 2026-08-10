//
//  StoresContainerView.swift
//  Chef Delivery 2
//
//  Created by Pedro Henrique Freire de Oliveira on 28/07/26.
//

import SwiftUI


struct StoresContainerView: View {
    
    let title = "Lojas"
    
    var body: some View {
        VStack(alignment: .leading){
            Text(title)
                .font(.headline)
            
            VStack(alignment: .leading, spacing: 30){
                ForEach(storesMock) { mock in
                    NavigationLink {
                        StoreDetailView(store: mock)
                    } label: {
                        StoreItemView(store: mock)
                    }

                }
            }
        }
        .padding(20)
        .foregroundStyle(.black)
    }
}

#Preview {
    StoresContainerView()
}
