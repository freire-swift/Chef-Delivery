//
//  Double+.swift
//  Chef Delivery 2
//
//  Created by Pedro Henrique Freire de Oliveira on 14/08/26.
//

import Foundation

extension Double {
    func formatPrice() -> String {
        let formattedString = String(format: "%.2f", self)
        return formattedString.replacingOccurrences(of: ".", with: ",")
    }
}
