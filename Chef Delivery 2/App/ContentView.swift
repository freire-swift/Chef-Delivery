//
//  ContentView.swift
//  Chef Delivery 2
//
//  Created by Pedro Henrique Freire de Oliveira on 06/07/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationBar()
                    .padding(.horizontal, 15)
                
                ScrollView(.vertical) {
                    VStack(spacing: 20){
                        OrderTypeGridView()
                        CarouselTabView()
                        StoresContainerView()
                    }
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}
