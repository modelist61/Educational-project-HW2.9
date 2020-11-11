//
//  ViewController.swift
//  HW2.9
//
//  Created by Dmitry Tokarev on 09.11.2020.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var animatedView: SpringView!
    @IBOutlet var descriptionLable: UILabel!
    @IBOutlet var buttonLable: UIButton!
    
    private var currentAnim = SpringDescriptionModel.getPresetList()
    
    @IBAction func actionButton(_ sender: SpringButton) {
        for preset in currentAnim {
            animatedView.animation = preset.animation
            animatedView.curve = preset.curve
            animatedView.force = preset.force
            animatedView.duration = preset.duration
            animatedView.delay = preset.delay
        }
        oneOfPreset()
        animatedView.animate()
    }
    
    private func oneOfPreset() {
        let springPreset = SpringDescriptionModel.getPresetList()
        
        for preset in springPreset {
            currentAnim.append(preset)
            buttonLable.setTitle("Run \(preset.animation)",
                                 for: .normal)
        }
       
        descriptionLable.text = ("""
                                preset: \(animatedView.animation)
                                curve: \(animatedView.curve)
                                force: \(animatedView.force)
                                duration: \(animatedView.duration)
                                delay: \(animatedView.delay)
                                """)
    }
}

