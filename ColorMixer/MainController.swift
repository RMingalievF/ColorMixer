//
//  MainController.swift
//  ColorMixer
//
//  Created by Руслан Мингалиев on 29.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mixerColorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
   
    @IBOutlet weak var valueRedLabel: UILabel!
    @IBOutlet weak var valueGreenLabel: UILabel!
    @IBOutlet weak var valueBlueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        setupMixerColorView()
        setupLabelsConfiguration()
        setupSliders()
        
        super.viewDidLoad()
        
    }

    
    @IBAction func redSliderActoin() {
        valueRedLabel.text = String(format: "%.1f", redSlider.value)
    }
    
    @IBAction func greenSliderAction() {
        valueGreenLabel.text = String(format: "%.1f", greenSlider.value)
    }
    
    
    @IBAction func blueSlinerAction() {
        valueBlueLabel.text = String(format: "%.1f", blueSlider.value)
    }
    

    
// MARK: Private metods
    private func setupLabelsConfiguration() {
        redLabel.textColor = .red
        redLabel.text = "Red"
        valueRedLabel.text = redSlider.value.formatted()
        valueRedLabel.textColor = .red
        
        
        greenLabel.textColor = .green
        greenLabel.text = "Green"
        valueGreenLabel.text = greenSlider.value.formatted()
        valueGreenLabel.textColor = .green
        
        
        blueLabel.textColor = .blue
        blueLabel.text = "Blue"
        valueBlueLabel.text = blueSlider.value.formatted()
        valueBlueLabel.textColor = .blue
        
    }
    
    private func setupSliders() {
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
        redSlider.thumbTintColor = .red
        
        
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
        greenSlider.thumbTintColor = .green
        
        
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.thumbTintColor = .blue
    }
    
    private func setupMixerColorView() {
        mixerColorView.backgroundColor = .gray
        mixerColorView.layer.cornerRadius = 5
        
    }
}

