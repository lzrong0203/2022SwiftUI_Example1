//
//  PlaceDetailView.swift
//  FoodPin
//
//  Created by Zhao-Rong Lai on 2022/7/25.
//

import SwiftUI

struct PlaceDetailView: View {
    @Environment(\.dismiss) var dismiss
    
    var place: Place
    
    var body: some View {
//        ScrollView {
            VStack(alignment: .leading) {
                AsyncImage(url: URL(string: place.image)){ image in
                image
//                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: 0, maxWidth: .infinity)
//                    .frame(height: .infinity)
                    .ignoresSafeArea()
                    
                    .overlay {
                        VStack {
                            Image(systemName: "heart")
                                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topTrailing)
                                .padding()
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                                .padding(.top, 40)
                            
                            VStack(alignment: .leading, spacing: 5) {
                                Text(place.name)
                                    .font(.system(.largeTitle, design: .rounded))
                                    .bold()
                                    .background(Color.black)
                                Text(place.address)
                                    .font(.system(.headline, design: .rounded))
                                    .padding(.all, 5)
                                    .background(Color.black)
                            }
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottomLeading)
                            .foregroundColor(.white)
                            .padding()
                        }
                    }
                } placeholder: {
                    Color.orange.opacity(0.1)
                }
//            }
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    dismiss()
                },label: {
                    Text("\(Image(systemName: "chevron.left")) \(place.name)")
                        .foregroundColor(.black)
                })
            }
        }
    }
}

struct PlaceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceDetailView(place: Place(id: 1, name: "TEST", address: "TEST", introduction: "TEST", tel: "Test", image: "https://www.travel.taipei/image/282358", isFavorite: false))
    }
}
