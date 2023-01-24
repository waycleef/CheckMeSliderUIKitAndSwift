//
//  TargetValueView.swift
//  CheckMeSliderUIKitAndSwift
//
//  Created by Алишер Маликов on 22.01.2023.
//

import SwiftUI

struct TargetValueView: View {
    
    let targetValue: Int
    
    var body: some View {
        HStack {
            Text("Подвиньте слайдер, как можно ближе к: \(targetValue)")

        }
    }
}

struct TargetValueView_Previews: PreviewProvider {
    static var previews: some View {
        TargetValueView(targetValue: Int.random(in: 0...100))
    }
}
