//
//  BikeStation.swift
//  BikeStation
//
//  Created by Akshay Kumar on 31/05/22.
//

import Foundation

// MARK: - BikeStation
struct BikeStation: Codable {
    let features: [Feature]
    let crs: CRS
    let type: String
}

// MARK: - CRS
struct CRS: Codable {
    let type: String
    let properties: CRSProperties
}

// MARK: - CRSProperties
struct CRSProperties: Codable {
    let code: String
}

// MARK: - Feature
struct Feature: Codable,Identifiable {

    let geometry : Geometry?
    let id : String?
    let type : String?
    let properties : FeatureProperties?

    enum CodingKeys: String, CodingKey {

        case geometry = "geometry"
        case id = "id"
        case type = "type"
        case properties = "properties"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        geometry = try values.decodeIfPresent(Geometry.self, forKey: .geometry)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        type = try values.decodeIfPresent(String.self, forKey: .type)
        properties = try values.decodeIfPresent(FeatureProperties.self, forKey: .properties)
    }
}

// MARK: - Geometry
struct Geometry: Codable {
    let coordinates: [Double]
    let type: GeometryType
}

enum GeometryType: String, Codable {
    case point = "Point"
}

// MARK: - FeatureProperties
struct FeatureProperties: Codable {
    let freeRacks, bikes, label, bikeRacks: String
    let updated: String

    enum CodingKeys: String, CodingKey {
        case freeRacks = "free_racks"
        case bikes, label
        case bikeRacks = "bike_racks"
        case updated
    }
}

enum FeatureType: String, Codable {
    case feature = "Feature"
}

