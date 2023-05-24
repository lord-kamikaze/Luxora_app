//
//  ProductRow.swift
//  LUXORA.np
//
//  Created by Aryan Karki on 19/05/23.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        HStack(spacing: 20){
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            
            VStack( alignment : .leading, spacing: 10){
                Text(product.name)
                    .bold()
                
                Text("₹\(product.prices)")
                
            }
            Spacer()
            
            Image(systemName:"trash")
                .foregroundColor(Color(red: 0.816, green: 0.122, blue: 0.121))
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: shoeProductList[3])
            .environmentObject(CartManager())
        ProductCard(product: pantProductList[0])
            .environmentObject(CartManager())
    }
}
