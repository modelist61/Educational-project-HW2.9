//
//  animationPreset.swift
//  HW2.9
//
//  Created by Dmitry Tokarev on 10.11.2020.
//

import Spring

class MyPresetDM {
    
    static let shared = MyPresetDM()
    
    let animation = ["shake", "pop", "morph", "squeeze", "wobble",
                     "flipX", "flipY", "fall", "squeezeLeft",
                     "squeezeRight", "squeezeDown", "squeezeUp",
                     "slideLeft", "slideRight", "slideDown",
                     "slideUp", "fadeIn", "fadeOut", "fadeInLeft",
                     "fadeInRight", "fadeInDown", "fadeInUp",
                     "zoomIn", "zoomOut", "flash", "swing"]
    let curve = ["spring", "linear", "easeIn", "easeOut", "easeInOut"]
    let cgFloatArray: [CGFloat] = [0.1, 0.3, 0.5, 0.7, 0.9, 1.1, 1.3, 1.5, 1.8, 2.0]

    
    private init() {}
}
