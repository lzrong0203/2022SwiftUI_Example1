//
//  File.swift
//  FoodPin
//
//  Created by Zhao-Rong Lai on 2022/7/25.
//

import Foundation

struct Places: Codable {

    var total: Int
    var data: [Place]
    

    struct Place: Codable {
        var id: Int
        var name: String
        var address: String
        var introduction: String
        var tel: String
        var images: [img]
//        var isFavorite: Bool
        struct img: Codable{
            var src: String
            var ext: String
        }
    }
    
}
