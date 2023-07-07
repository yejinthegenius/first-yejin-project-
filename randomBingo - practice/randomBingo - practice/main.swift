//
//  main.swift
//  randomBingo - practice
//
//  Created by user on 2023/07/07.
//

import Foundation

// 이 앱은 빙고게임을 위한 앱. 컴퓨터가 랜덤으로 지정한 숫자를 내가 선택한 숫자와 일치시키는 게임이다.
// 그러려면 먼저, 컴퓨터가 랜덤으로 값을 지정하는 기능구현
// 내가 선택한 값을 콘솔창으로 부터 불러와서 저장할 수 있어야함 .
// 그러기 위해선 일단 내가 선택한 값을 담을 변수, 내가 지정한 값을 불러오는 기능, 이것의 옵셔널을 풀어주는 기능?
// 그리고 애들을 비교해서 빙고게임이 가능하게 해줌. 그러기 위해선 if와 while 반복문 필요

var computerChoice = Int.random(in: 0...100)
var myChoice : Int = 0

while true {
    
    var userinput = readLine()
    
    if let input = userinput {
        if let number = Int(input) {
            
            myChoice = number // 하나 의문인 점은 왜 꼭 이 식이 if의 블록 안에 있어야하는지가 의문임. 
        }
    }
    
    if computerChoice > myChoice {
        print("Up")
    } else if computerChoice < myChoice {
        print("Down")
    } else {
        print("Bingo!")
        break
    }
}
