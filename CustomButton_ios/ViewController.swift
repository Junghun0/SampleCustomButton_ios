//
//  ViewController.swift
//  CustomButton_ios
//
//  Created by 박정훈 on 07/03/2019.
//  Copyright © 2019 swift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //viewDidLoad 안에서 초기화를 해줘야 메모리사용을 줄일수있다.멤버변수로 선언하지 말 것!!
        //뷰 컨트롤러가 화면에 처음 표시되는 시점에 인스턴스가 생성되기때문에
        
        //버튼 인스턴스를 생성하고, 속성설정
        let btn = UIButton(type: UIButton.ButtonType.system)
        btn.frame = CGRect(x: 50, y: 100, width: 150, height: 30)
        btn.setTitle("테스트 버튼", for: UIControl.State.normal)
        
        //버튼을 수평 중앙 정렬한다.
        btn.center = CGPoint(x: self.view.frame.size.width/2, y: 100)
        self.view.addSubview(btn)
        
        btn.addTarget(self, action: #selector(btnOnclick(_:)), for: .touchUpInside)
    }
    
    @objc func btnOnclick(_ sender: Any){
        //호출한 객체가 버튼이라면
        if let btn = sender as? UIButton{
            btn.setTitle("클릭On", for: UIControl.State.normal)
        }
    }
    
    /*
    @objc func btnOnclick(_ sender: UIButton){
     sender.setTitle("클릭On",for: .normal)
    }
    */


}

