//
//  ViewController.swift
//  FirstNewApp(timer) - practice
//
//  Created by user on 2023/07/14.
//

import UIKit

class ViewController: UIViewController {

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

    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        // 슬라이더의 밸류값을 가지고 메인 레이블 세팅
        // 슬라이더에 있는 밸류값을 가져와가지고 메인레이블의 텍스트 세팅
        
        let seconds = Int(slider.value * 60)
        mainLabel.text = "\(seconds) 초"
        number = seconds
        
    }
    
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        
        
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [self] _ in
          
            if number > 0 {
                number -= 1
                slider.value = Float(number) / Float(60)
                // 이 부분이 너무 이해가 안 된다. 넘버를 왜 만들었는진 알겠는데. 어차피 밑에 메인레이블에 넘버라는 값을 넣어줄 거면 왜 슬라이더. 밸류에 넘버를 넣어줘야하는 거지?
                mainLabel.text = "\(number) 초"
                
            } else {
                
                number = 0
                mainLabel.text = "초를 선택하세요"
                timer?.invalidate()
            }
            
            
            
       
       

      
        }
    }
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 슬라이더의 가운데 설정
        
        mainLabel.text = "초를 선택하세요"
        slider.setValue(0.5, animated: true)
    
    }
    


}

