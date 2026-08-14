//
//  StoreDetailView.swift
//  Chef Delivery 2
//
//  Created by Pedro Henrique Freire de Oliveira on 06/08/26.
//

import SwiftUI

struct StoreDetailView: View {
    
    let store: StoreType
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ScrollView(){
            VStack(alignment: .leading){
                Image(store.headerImage)
                    .resizable()
                    .scaledToFit()
                HStack{
                    Text(store.name)
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                    Image(store.logoImage)
                }
                .padding(.vertical, 8)
                .padding(.horizontal)
                
                HStack{
                    Text(store.location)
                    Spacer()
                    ForEach(1...store.stars, id: \.self){ _ in
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                            .font(.caption)
                    }
                }
                .padding(.vertical, 8)
                .padding(.horizontal)
                
                Text("Produtos")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding()
                
                ForEach(store.products){ product in
                    HStack(spacing: 8){
                        VStack(alignment: .leading,spacing: 8){
                            Text(product.name)
                                .fontWeight(.bold)
                            Text(product.description)
                                .foregroundStyle(.black.opacity(0.5))
                            Text(product.formattedPrice)
                        }
                        Spacer()
                        Image(product.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(.rect(cornerRadius: 12, style: .continuous))
                            .frame(width: 120, height: 120)
                            .shadow(color: .black.opacity(0.3), radius: 20, x: 8, y: 6)
                    }
                    .padding()
                }
            }
        }
        .navigationTitle(store.name)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    HStack(spacing: 4) {
                        Image(systemName: "cart")
                        
                        Text("Lojas")
                    }
                    .foregroundStyle(Color("ColorRed"))
                }
            }
        }
    }
    
}
    

#Preview {
    StoreDetailView(store: storesMock[0])
}
