//
//  StoresContainerView.swift
//  Chef Delivery 2
//
//  Created by Pedro Henrique Freire de Oliveira on 28/07/26.
//

import SwiftUI


struct StoresContainerView: View {
    
    let title = "Lojas"
    @State private var ratingFilter = 0
    
    var filteredStores: [StoreType] {
        return storesMock.filter { store in
            store.stars >= ratingFilter
        }
    }
    
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Text(title)
                    .font(.headline)
                
                Spacer()
                
                Menu("Filtrar"){
                    
                    Button {
                        ratingFilter = 0
                    } label: {
                        Text("Limpar filtro")
                    }
                    
                    Divider()
                    
                    ForEach(1...5, id:\.self){ rating in
                        Button {
                            ratingFilter = rating
                        } label: {
                            if rating > 1 && rating < 5 {
                                Text("\(rating.self) estrelas ou mais")
                            }else if rating > 4 {
                                Text("\(rating.self) estrelas")
                            } else {
                                Text("\(rating.self) estrela ou mais")
                            }
                        }

                    }
                }
            }
            
            VStack(alignment: .leading, spacing: 30){
                
                if filteredStores.isEmpty{
                    Text("Nenhum resultado encontrado")
                        .padding(.vertical, 32)
                        .font(.title3)
                        .frame(maxWidth: .infinity)
                        .foregroundStyle(.colorRed)
                } else {
                    ForEach(filteredStores) { mock in
                        NavigationLink {
                            StoreDetailView(store: mock)
                        } label: {
                            StoreItemView(store: mock)
                        }

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
