//
//  ViewController.swift
//  UpDownGame- practice
//
//  Created by user on 2023/07/08.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
     
    var comNumber = Int.random(in: 1...10)
    var myNumber : Int = 1
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
        mainLabel.text = "선택하세요"
        numberLabel.text = "?"
        
        }

    @IBAction func numberButtonPressed(_ sender: UIButton) {
        // 1) 버튼의 숫자값을 받아온다
        // 2) 그 숫자값을 저장해서 어딘가에 담아준다
        // 3) 숫자값을 넘버레이블에 표시
        
        guard let userinput = sender.currentTitle else {return}
        numberLabel.text = userinput
        
        guard let num = Int(userinput) else {return}
        myNumber = num
       
        }
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        // 1) 숫자값과 컴퓨터선택 숫자를 비교해서 메인레이블에 결과 표시
        
        if comNumber > myNumber {
            mainLabel.text = "Up"
        } else if comNumber < myNumber {
            mainLabel.text = "Down"
        } else {
            mainLabel.text = "Bingo😇"
        }
    }
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 1) 메인레이블 "선택하세요"
        // 2) 숫자레이블 "?"
        // 3) 컴퓨터가 랜덤숫자 선택
        
        mainLabel.text = "선택하세요"
        numberLabel.text = "?"
        comNumber = Int.random(in: 0...10)
    }
    
    
    
}

