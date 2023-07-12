//
//  ViewController.swift
//  FirstNewApp
//
//  Created by user on 2023/07/11.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    //변수를 만들어야 하니까 클래스 내부에
    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    weak var timer: Timer?
    
    var number = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    func configureUI() {
        mainLabel.text = "초를 선택하세요"
        slider.value = 0.5
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        
        // value changed : 값이 바뀔 때마다 함수를 실행시킨다.
        // 슬라이더의 밸류값을 가지고 메인레이블의 텍스트를 세팅
        
      let seconds = Int(slider.value * 60)
        mainLabel.text = "\(seconds) 초"
        number = seconds

    }
    
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        // 1초씩 지나갈 때마다 무언가를 실행
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [self] _ in
        // 반복하고 싶은 코드를 내장시킴, 근데 저 클로저 [weak self]이거.. self 프로퍼티 스스로를 지칭하는 거라는데, 이해 x
           
            
            if number > 0 {
               number -= 1
                // 슬라이더도 따라 줄여야함 , 레이블 표시도 다시 해줘야 함
                slider.value = Float(number) / Float(60)
                mainLabel.text = "\(number) 초"
            } else {
                number = 0
                mainLabel.text = "초를 선택하세요"
                timer?.invalidate()
                AudioServicesPlayAlertSound(SystemSoundID(1322))
            }
        }
    }
   
    @IBAction func resetButtonTapped(_ sender: Any) {
        // 초기화 세팅
        mainLabel.text = "초를 선택하세요"
        slider.value = 0.5
        number = 0
        timer = nil

    }
    
    
    
}

