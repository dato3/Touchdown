//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Daulet on 20.11.2021.
//

import SwiftUI

struct NavigationBarDetailView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeIn) {
                    feedback.impactOccurred()
                    shop.showingProduct = false
                    shop.selectedProduct = nil
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            Spacer()
                       
            Button(action: {
                
            }, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })
        } //: Stack
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
