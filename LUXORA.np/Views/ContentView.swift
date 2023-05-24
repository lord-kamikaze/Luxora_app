//
//  ContentView.swift
//  LUXORA.np
//
//  Created by Aryan Karki on 17/05/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160),spacing:20)]
    
   
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 15){
                    ForEach(shoeProductList, id: \.id){ product in
                        ProductCard(product: product)
                            .environmentObject(cartManager)
                    }
                    ForEach(pantProductList, id: \.id) { product in
                                            ProductCard(product: product)
                                                .environmentObject(cartManager)
                                        }
                }
                .padding()
            }
            .navigationTitle(Text("LUXORA"))
            .toolbar {
                NavigationLink
                {
                    CartView()
                        .environmentObject(cartManager)
                    
                } label: {
                    CartButton(numberOfProducts: cartManager.products.count)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
