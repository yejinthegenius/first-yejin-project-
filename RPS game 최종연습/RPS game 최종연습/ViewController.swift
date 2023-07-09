//
//  ViewController.swift
//  RPS game 최종연습
//
//  Created by user on 2023/07/09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var comChoiceLabel: UILabel!
    @IBOutlet weak var myChoiceLabel: UILabel!
    
    @IBOutlet weak var comChoiceImage: UIImageView!
    @IBOutlet weak var myChoiceImage: UIImageView!
    
    var comChoice : Rps = Rps(rawValue: Int.random(in: 0...2))!
    var myChoice : Rps = Rps.rock
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        comChoiceLabel.text = "준비"
        myChoiceLabel.text = "준비"
        
        comChoiceImage.image = #imageLiteral(resourceName: "ready")
        myChoiceImage.image = #imageLiteral(resourceName: "ready")
    }
    

    @IBAction func rpsButtonTapped(_ sender: UIButton) {
        // 1) 버튼이 눌리면 눌러진 값을 파악하고 저장해서 담는다
        let titlte = sender.currentTitle
        
        switch title {
        case "가위" :
            myChoice = Rps.scissors
        case "바위" :
            myChoice = Rps.rock
        case "보" :
            myChoice = Rps.paper
        default :
            break
        }
    }
    
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
     // 1) 선택된 값에 따라 각자 이미지 변경
     // 2) 선택된 값에 따라 각자 레이블 변경
     // 3) 선택된 값을 비교해 승부 판단
        switch comChoice {
        case .rock:
            comChoiceImage.image = #imageLiteral(resourceName: "rock")
            comChoiceLabel.text = "바위"
        case .paper:
            comChoiceImage.image = #imageLiteral(resourceName: "paper")
            comChoiceLabel.text = "보"
        case .scissors:
            comChoiceImage.image = #imageLiteral(resourceName: "scissors")
            comChoiceLabel.text = "가위"
                }
        switch myChoice {
        case .rock:
            myChoiceImage.image = #imageLiteral(resourceName: "rock")
            myChoiceLabel.text = "바위"
        case .paper:
            myChoiceImage.image = #imageLiteral(resourceName: "paper")
            myChoiceLabel.text = "보"
        case .scissors:
            myChoiceImage.image = #imageLiteral(resourceName: "scissors")
                myChoiceLabel.text = "가위"
                }
        
        if comChoice == myChoice {
            mainLabel.text = "비겼다🫡"
        } else if comChoice == .paper && myChoice == .scissors {
            mainLabel.text = "이겼다🥳"
        } else if comChoice == .rock && myChoice == .paper {
            mainLabel.text = "이겼다🥳"
        } else if comChoice == .scissors && myChoice == .rock {
            mainLabel.text = "이겼다🥳"
        } else {
            mainLabel.text = "졌다🥺"
        }
        
        
        
    }
    
 
    @IBAction func resetButtonTapped(_ sender: UIButton) {
    
        comChoiceImage.image = #imageLiteral(resourceName: "ready")
        myChoiceImage.image = #imageLiteral(resourceName: "ready")
        
        comChoiceLabel.text = "준비"
        myChoiceLabel.text = "준비"
        
        mainLabel.text = "선택하세요"
        
        comChoice = Rps(rawValue: Int.random(in: 0...2))!
        // 1) 이미지 뷰 원래대로
        // 2) 메인레이블 원래대로
        // 3) 각자 레이블 원래대로
        // 4) 컴퓨터 선택 다시
        
    }
    
   
    
    
}

