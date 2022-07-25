//
//  RestaurantDetailView.swift
//  FoodPin
//
//  Created by Zhao-Rong Lai on 2022/7/24.
//

import SwiftUI

struct RestaurantDetailView: View {
    

@Environment(\.dismiss) var dismiss
    
    var restaurant: Restaurant
    
    var body: some View {
        ZStack(alignment: .top) {
            Image(restaurant.image)
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
            .ignoresSafeArea()
            
            Color.black
                .frame(height: 100)
                .opacity(0.8)
                .cornerRadius(20)
                .padding()
                .overlay {
                    VStack(spacing: 5){
                        Text(restaurant.name)
                            .foregroundColor(.yellow)
                            .font(.custom("Nunito-Bold", size: 35, relativeTo: .largeTitle))
                        Text(restaurant.type)
                        Text(restaurant.location)
                    }
                    .font(.system(.headline, design: .rounded))
                }
                .foregroundColor(.white)
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    dismiss()
                },label: {
                    Text("\(Image(systemName: "chevron.left")) \(restaurant.name)")
                })
            }
        }
    }
}

struct RestaurantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantDetailView(restaurant: Restaurant(name: "Cafe Deadend", type: "Coffee & Tea Shop", location: "G/F, 72 Po Hing Fong, Sheung Wan, Hong Kong", phone: "232-923423", description: "Searching for great breakfast eateries and coffee? This place is for you. We open at 6:30 every morning, and close at 9 PM. We offer espresso and espresso based drink, such as capuccino, cafe latte, piccolo and many more. Come over and enjoy a great meal.", image: "cafedeadend", isFavorite: false))
    }
}
