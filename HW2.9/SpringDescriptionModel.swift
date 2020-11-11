//
//  Model.swift
//  HW2.9
//
//  Created by Dmitry Tokarev on 10.11.2020.
//

import Spring

struct SpringDescriptionModel {
    let animation: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
}

extension SpringDescriptionModel {
    static func getPresetList() -> [SpringDescriptionModel] {
        var preset: [SpringDescriptionModel] = []
        
        let animation = MyPresetDM.shared.animation.randomElement() ?? ""
        let curve = MyPresetDM.shared.curve.randomElement() ?? ""
        let force = MyPresetDM.shared.cgFloatArray.randomElement() ?? 0.5
        let duration = MyPresetDM.shared.cgFloatArray.randomElement() ?? 0.5
        let delay = MyPresetDM.shared.cgFloatArray.randomElement() ?? 0.5
        
        let oneOfPreset = SpringDescriptionModel(animation: animation,
                                                 curve: curve,
                                                 force: force,
                                                 duration: duration,
                                                 delay: delay)
        preset.append(oneOfPreset)
        
        return preset
    }
}



