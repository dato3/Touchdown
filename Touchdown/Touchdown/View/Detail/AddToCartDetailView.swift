//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Daulet on 20.11.2021.
//

import SwiftUI

struct AddToCartDetailView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }) //: Button
            .padding(15)
            .background(
                Color(red: shop.selectedProduct?.red ?? sampleProduct.red,
                      green: shop.selectedProduct?.green ?? sampleProduct.green,
                      blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
            )
            .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
