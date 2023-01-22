//
//  SliderUIKit.swift
//  CheckMeSliderUIKitAndSwift
//
//  Created by Алишер Маликов on 22.01.2023.
//

import SwiftUI

struct SliderUIKit: UIViewRepresentable {

    @Binding var value: Int
    @Binding var alpha: Double
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.addTarget(context.coordinator,
                         action: #selector(Coordinator.didCahngeDone),
                         for: .valueChanged)

        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = Float(value)
        uiView.thumbTintColor = .red.withAlphaComponent(alpha)
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(value: $value)
    }

}

extension SliderUIKit {
    class Coordinator: NSObject {
        @Binding var value: Int
        
        init(value: Binding<Int>) {
            self._value = value
        }
        
        @objc func didCahngeDone(_ sender: UISlider) {
            value = Int(sender.value)
        }
    }
}

struct SliderUIKit_Previews: PreviewProvider {
    static var previews: some View {
        SliderUIKit(value: .constant(71), alpha: .constant(0.5))
    }
}
