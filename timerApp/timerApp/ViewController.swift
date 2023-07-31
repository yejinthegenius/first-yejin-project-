//
//  ViewController.swift
//  timerApp
//
//  Created by user on 2023/07/25.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    weak var timer: Timer?
    
    var number : Int = 0
    
    
       
    override func viewDidLoad() {
     setup()
    }

    func setup() {
        mainLabel.text = "할 수 있다"
       // 슬라이더의 가운데 설정
        slider.value = 0.5
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
// 슬라이더의 밸류값을 가지고 메인레이블의 텍스트 세팅
        let seconds = Int(slider.value * 60)
        mainLabel.text = "\(seconds)초"
        number = seconds
    }

    @IBAction func selsectButtonTapped(_ sender: UIButton) {
        
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [self] _ in
           
            if number > 0 {
                number -= 1
                slider.value = Float(number) / Float(60)
                mainLabel.text = "\(number)초"
            } else {
                number = 0
                mainLabel.text = "할 수 있다"
                timer?.invalidate()
                //타이머 죽이기
                
                AudioServicesPlayAlertSound(SystemSoundID(1322))

            }
            
             
            
            
            
            
            
        }
    }
    
    
    @IBAction func resetButtonTappd(_ sender: UIButton) {
        slider.setValue(0.5, animated: true)
        mainLabel.text = "할 수 있다"
        number = 0
        timer?.invalidate()
    }
    
    
    
}

