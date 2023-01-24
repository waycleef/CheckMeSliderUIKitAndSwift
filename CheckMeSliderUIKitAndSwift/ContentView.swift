//
//  ContentView.swift
//  CheckMeSliderUIKitAndSwift
//
//  Created by Алишер Маликов on 21.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentValue: Int = Int.random(in: 0...100)
    @State private var targetValue = Int.random(in: 0...100)
    @State private var showAlert = false


    var body: some View {
        VStack{
            TargetValueView(targetValue: targetValue)
            
            HStack {
                Text("0")
                SliderUIKit(value: $currentValue, alpha: computeScore())

                Text("100")
            }
            .padding()
            
            
            ButtonView(label: "Проверь меня") {
                showAlert.toggle()
            }
            .alert("Ваш результат", isPresented: $showAlert, actions: {}) {
                Text(computeScore().formatted())
            }
            
            ButtonView(label: "Начать заново") {
                targetValue = Int.random(in: 0...100)
                currentValue = Int.random(in: 0...100)
            }
        }
    }
    

    
    private func computeScore() -> Int {
        let difference = abs(targetValue - lround(Double(currentValue)))
        return 100 - difference
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
