//
//  Landmark.swift
//  Landmarks
//
//  Created by HoangHaaii on 06/06/2024.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable,Identifiable{
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    private var imageName: String
    var image: Image{
        Image(imageName)
    }
    private var coordinates: Coordinates
    struct Coordinates: Hashable, Codable{
        var latitude: Double
        var longitude: Double
    }
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    var isFavorite: Bool
    var category: Category
        enum Category: String, CaseIterable, Codable {
            case lakes = "Lakes"
            case rivers = "Rivers"
            case mountains = "Mountains"
        }
    var isFeatured: Bool
    var featureImage: Image?{
        isFeatured ? Image(imageName + "_feature"): nil
    }
}
