//
//  DataStore.swift
//  AnimationSpring
//
//  Created by Денис Курлыков on 04.08.2022.
//

import Foundation
import SpringAnimation

class DataStore {
    static let shared = DataStore()
    
    let animation = AnimationPreset.allCases
    let curve = AnimationCurve.allCases
    
}
