//
//  NavigationBar.swift
//  Chef Delivery 2
//
//  Created by Pedro Henrique Freire de Oliveira on 06/07/26.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Button("Endereço"){
                    
                }
                .foregroundStyle(.black)
                .fontWeight(.bold)
                .font(.subheadline)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "bell.badge")
                }

            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    NavigationBar()
}
