//
//  ProdutDetailView.swift
//  Chef Delivery 2
//
//  Created by Pedro Henrique Freire de Oliveira on 17/08/26.
//

import SwiftUI

struct ProdutDetailView: View {
    
    let product: ProductType
    
    @State private var productQuantity = 1
    
    var body: some View {
        VStack{
            VStack(alignment: .leading, spacing: 16){
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: 20)
                
                Text(product.name)
                    .font(.title)
                    .bold()
                    .padding(.horizontal)
                    .padding(.top)
                
                Text(product.description)
                    .padding(.horizontal)
                
                Text(product.formattedPrice)
                    .font(.title3)
                    .padding(.horizontal)
                    .bold()
            }
            Spacer()
            
            VStack(spacing: 16) {
                Text("Quantidade")
                    .font(.title3)
                    .bold()
                
                HStack{
                    Button {
                        if(productQuantity > 1){
                            productQuantity -= 1
                        }
                    } label: {
                        Image(systemName: "minus.circle.fill")
                            .font(.title3)
                            .bold()
                    }
                    
                    Text("\(productQuantity)")
                        .bold()
                        .font(.title2)
                    
                    Button {
                        productQuantity += 1
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.title3)
                            .bold()
                    }

                }
            }
            
            Spacer()
            
            Button {
                //
            } label: {
                HStack(){
                    Image(systemName: "cart")
                    
                    Text("Adicionar ao carrinho")
                }
                .padding(.horizontal, 32)
                .padding(.vertical, 16)
                .font(.title3)
                .bold()
                .background(.colorRed)
                .foregroundStyle(.white)
                .clipShape(.rect(cornerRadius: 32, style: .continuous))
                .shadow(color: Color(.colorRedDark).opacity(0.5), radius: 10, x:6, y:8)
            }

            
        }
        
    }
}

#Preview {
    ProdutDetailView(product: storesMock[0].products[0])
}
