//
//  ProductCard.swift
//  LUXORA.np
//
//  Created by Aryan Karki on 17/05/23.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom){
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                
                VStack(alignment: .leading){
                    Text(product.name)
                        .bold()
                    
                    Text("₹\(product.prices)")
                        .font(.caption)
                  
                  
                }
                .padding()
                .frame(width: 180, height: 45)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 180, height: 200)
            .shadow(radius: 3)
            
            Button {
                cartManager.addToCart(product: product)

            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: shoeProductList[0])
            .environmentObject(CartManager())
        
        ProductCard(product: pantProductList[0])
                        .environmentObject(CartManager())
    }
}
