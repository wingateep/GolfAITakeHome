//
//  DrillData.swift
//  GolfAITH
//
//  Created by Elizabeth Wingate on 10/25/20.
//

import Foundation

struct DrillsData: Codable, Identifiable, Hashable {
    let id : Int
    let title: String
    let description: [DescriptionItem]
    let targets: [Target]
    let benefits: [Benefit]
    let steps: [Step]
    let details: [Detail]
    let videoURL: URL?
    let thumbnailURL: URL?
}
struct Detail: Codable,Hashable {
    let name: String
}
struct Step: Codable,Hashable {
    let name: String
}
struct Benefit: Codable,Hashable {
    let name: String
}
struct DescriptionItem: Codable, Hashable {
    let name: String
}
struct Target: Codable, Hashable {
    let name: String
}
