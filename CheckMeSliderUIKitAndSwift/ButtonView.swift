//
//  ButtonView.swift
//  CheckMeSliderUIKitAndSwift
//
//  Created by Алишер Маликов on 22.01.2023.
//

import SwiftUI

struct ButtonView: View {
    
    let label: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(label)
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(label: "Нажми меня", action: {})
    }
}
