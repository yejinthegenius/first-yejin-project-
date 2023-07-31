//
//  ViewController.swift
//  timer app - practice
//
//  Created by user on 2023/07/31.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    weak var timer: Timer?
    
    var number = 1

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //슬라이더 값 가운데로
        slider.value = 0.5
    }
    

    @IBAction func sliderChanged(_ sender: UISlider) {
        // 슬라이더 값이 바뀔 때 마다 메인 레이블이 바뀌어야함
        let seconds = Int(slider.value * 60)
        mainLabel.text = "\(seconds)초"
        number = seconds
    }
    
    
    
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        // 타이머 작동
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [self] _ in
            if number > 0 {
                number -= 1
                mainLabel.text = "\(number)초"
                slider.value = Float(number) / Float(60)
            } else {
                timer?.invalidate()
                number = 0
                AudioServicesPlayAlertSound(SystemSoundID(1322))
            }
            }
        }
        
    
        
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        mainLabel.text = "초를 선택하세요"
        slider.setValue(0.5, animated: true)
        timer?.invalidate()

    }

        
        
    }
  
    

