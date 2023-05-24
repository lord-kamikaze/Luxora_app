//
//  Product.swift
//  LUXORA.np
//
//  Created by Aryan Karki on 17/05/23.
//

import Foundation

struct Product: Identifiable{
    var id = UUID()
    var name: String
    var image: String
    var prices: Int
    var size: String
}

var shoeProductList = [
    Product(name: "Air Jordan 1 Low FlyEase" , image: "Air Jordan 1 Low FlyEase Red.png", prices: 11895, size: "6, 7, 7.5, 8"),
    Product(name: "Air Jordan Low SE" , image: "Air Jordan Low SE.png", prices: 10295,size: "6, 7, 7.5, 8"),
    Product(name: "Nike Air Force 1 '07" , image: "Nike Air Force 1 '07.png", prices: 7495,size: "6, 7, 7.5, 8"),
    Product(name: "Nike Blazer Low '77 Vintage " , image: "Nike Blazer Low '77 Vintage White.png", prices: 7495,size: "6, 7, 7.5, 8"),
    Product(name: "Nike Court Vision Low " , image: "Nike Court Vision Low Green", prices:5695,size: "6, 7, 7.5, 8"),
    Product(name: "Nike Dunk High Retro Premium" , image: "Nike Dunk High Retro Premium Grey.png", prices: 11495,size: "6, 7, 7.5, 8"),
    Product(name: "Nike Dunk Low Retro Premium" , image: "Nike Dunk Low Retro Premium Black.png", prices: 9695,size: "6, 7, 7.5, 8"),
    Product(name: "Nike Dunk Low Retro SE 2" , image: "Nike Dunk Low Retro SE 2 Green.png", prices: 9695,size: "6, 7, 7.5, 8"),
    Product(name: "Nike Dunk Mid " , image: "Nike Dunk Mid Orange .png", prices: 10295,size: "6, 7, 7.5, 8")]
var pantProductList = [
    Product(name: "Straight Regular Jeans Blue", image: "pants1", prices: 1799,size: "S, M, L, XL"),
    Product(name: "Straight Leg Jeans Black", image: "pants2", prices: 1799,size: "S, M, L, XL"),
    Product(name: "Regular Fit Twill Cargo Pants", image: "pants3", prices: 1879,size: "S, M, L, XL"),
    Product(name: "Relaxed Fit Cargo Pants", image: "pants4", prices: 2200,size: "S, M, L, XL"),
    Product(name: "Jogger Pants", image: "pants5", prices: 1499,size: "S, M, L, XL")]

