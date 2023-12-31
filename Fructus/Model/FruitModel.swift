//
//  FruitModel.swift
//  Fructus
//
//  Created by Bartu Kara on 20.09.2023.
//

import Foundation
import SwiftUI

// MARK: - Fruits Data Model

struct Fruit: Identifiable{
    var id = UUID()
    var title : String
    var headline : String
    var image : String
    var gradientColors : [Color]
    var description : String
    var nutrition : [String]
}
