//
//  QuantityFavoriteDetailView.swift
//  Touchdown
//
//  Created by Daulet on 20.11.2021.
//

import SwiftUI

struct QuantityFavoriteDetailView: View {
    @State private var counter: Int = 0
    @State private var isFavourite: Bool = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                if counter > 0 {
                    feedback.impactOccurred()
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            Button(action: {
                if counter < 100 {
                    feedback.impactOccurred()
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            
            Spacer()
            
            Button(action: {
                isFavourite.toggle()
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(isFavourite ? .pink : .gray)
            })
        }) //: HStack
            .font(.system(.title, design: .rounded))
            .foregroundColor(.black)
            .imageScale(.large)
    }
}

struct QuantityFavoriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavoriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
