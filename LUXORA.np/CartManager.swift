//
//  CartManager.swift
//  LUXORA.np
//
//  Created by Aryan Karki on 19/05/23.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product: Product) {
        products.append(product)
        total += product.prices
        
    }
    
    func removeFromCart(product: Product){
        products = products.filter { $0.id != product.id }
        total -= product.prices
        
    }
}
