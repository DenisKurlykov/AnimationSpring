//
//  Animation.swift
//  AnimationSpring
//
//  Created by Денис Курлыков on 04.08.2022.
//

import Foundation

struct Animation {
    let name: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    var description: String {
        return """
        preset: \(name)
        curve: \(curve)
        force: \(String(format: "%.2f", force))
        duration: \(String(format: "%.2f", duration))
        delay: \(String(format: "%.2f", delay))
        """
    }
    
    static func getAnimation() -> Animation {
        Animation(
            name: DataStore.shared.animation.randomElement()?.rawValue ?? "swing",
            curve: DataStore.shared.curve.randomElement()?.rawValue ?? "easeOutBack",
            force: Float.random(in: 0...2),
            duration: Float.random(in: 0...2),
            delay: Float.random(in: 0...1)
        )
    }
}
