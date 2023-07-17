//
//  ViewController.swift
//  myFirstApp-practice
//
//  Created by user on 2023/06/21.
//

import UIKit

class ViewController: UIViewController {

    // 뷰컨트롤러라는 클래스. UI뷰 컨트롤러라는 애플이 미리 만들어놓은 것을 상속받은 것. 클래스는 항상 대문자로 시작하는 이름
    
   @IBOutlet weak var mainLabel: UILabel!
   @IBOutlet weak var myButton: UIButton!
    // 속성 = 변수, 클래스 내부에 있는 변수를 우리는 속성이라고 한다 weak : 메모리 관리를 할 때 가르키는 상대방의 레퍼런스 카운팅을 올라가지 않게 하기 위함
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 오버라이드 = 재정의, 위으 뷰컨이라는 클래스에서 이미 뷰디드로드를 정의했는데, 그걸 한번더 정의했으니 재정의
        // super.viewDidLoad 는 상위에 있는 뷰디드로드를 호출하는 것
        mainLabel.textColor = #colorLiteral(red: 0.9721935391, green: 0.7751877308, blue: 1, alpha: 1)
        
        
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
  //함수의 이름은 항상 소문자로 시작을 해야해 ! 이런것들이 안 갖춰져있으면 기본기가 안 다져져있다고 오해받을 수 있음
        // 함수의 위 구멍에서 들어오는 게 버튼이라는 뜻. 즉 함수를 실행시키는 매게체. _는 파라미터 
        mainLabel.text = "안녕하세요"
        mainLabel.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        mainLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        mainLabel.textAlignment = NSTextAlignment.center
        
        myButton.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        myButton.tintColor = .green
    
    }
    
    
    
    
    

}

