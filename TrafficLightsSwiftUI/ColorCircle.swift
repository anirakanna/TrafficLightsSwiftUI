//
//  ColorCircle.swift
//  TrafficLightsSwiftUI
//
//  Created by Evgenia Shipova on 14.10.2020.
//

import SwiftUI

struct ColorCircle: View {
    let color: UIColor
    let alpha: Double
    
    var body: some View {
        Color(color)
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .opacity(alpha)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct Circle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, alpha: 1)
    }
}
