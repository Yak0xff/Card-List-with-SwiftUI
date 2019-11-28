//
//  CardData.swift
//  CardListDemo
//
//  Created by Robin on 2019/11/28.
//  Copyright © 2019 RobinChao. All rights reserved.
//

import SwiftUI


struct CardData: Hashable, Codable, Identifiable {
    var id: Int
    var image: String
    var category: String
    var heading: String
    var author: String
}
