//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Evgenia Shipova on 14.10.2020.
//

import SwiftUI


struct ContentView: View {
    enum CurrentLight {
        case red, yellow, green
    }
    
    @State private var currentLight = CurrentLight.red
    @State private var buttonName = "Start"
    
    @State private var alphaGreen = 0.3
    @State private var alphaRed = 0.3
    @State private var alphaYeallow = 0.3
    
    var body: some View {
        ZStack {
            BackgroundColor()
            VStack {
                VStack {
                    ColorCircle(
                        color: .red,
                        alpha: alphaRed)
                    ColorCircle(
                        color: .yellow,
                        alpha: alphaYeallow)
                    ColorCircle(
                        color: .green,
                        alpha: alphaGreen)
                }
                .padding()
                Spacer()
                
                Button(action: { buttonAction() }) {
                    Text(buttonName)
                        .fontWeight(.bold)
                        .font(.title)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(20)
                        .foregroundColor(.white)
                        .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.white, lineWidth: 5)
                            )
                }
            }
            .padding()
        }
    }
    
    private func buttonAction() {
        buttonName = "Next"
        
        switch currentLight {
        case .red:
            alphaGreen = 0.3
            alphaRed = 1
            currentLight = .yellow
        case .yellow:
            alphaRed = 0.3
            alphaYeallow = 1
            currentLight = .green
        case .green:
            alphaGreen = 1
            alphaYeallow = 0.3
            currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
