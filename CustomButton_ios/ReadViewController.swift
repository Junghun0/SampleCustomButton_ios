//
//  ReadViewController.swift
//  CustomButton_ios
//
//  Created by 박정훈 on 08/03/2019.
//  Copyright © 2019 swift. All rights reserved.
//

import Foundation
import UIKit

class ReadViewController : UIViewController{
    //전달된 값을 저장할 변수를 정의
    var pEmail: String?
    var pUpdate: Bool?
    var PInterval: Double?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //배경색상을 설정
        self.view.backgroundColor = UIColor.white
        
        //레이블 객체정의
        let email = UILabel()
        let update = UILabel()
        let interval = UILabel()
        
        //위치와 영역
        email.frame = CGRect(x: 50, y: 100, width: 300, height: 30)
        update.frame = CGRect(x: 50, y: 150, width: 300 , height: 30)
        interval.frame = CGRect(x: 50, y: 200, width: 300, height: 30)
        
        //전달받은 값을 레이블에 표시
        email.text = "전달받은 이메일 : \(self.pEmail!)"
        update.text = "업데이트 여부 : \(self.pUpdate == true ? "업데이트 함" : "업데이트 안 함")"
        interval.text = "업데이트 주기 : \(self.PInterval!) 분마다"
        
        //뷰 추가
        self.view.addSubview(email)
        self.view.addSubview(update)
        self.view.addSubview(interval)
    }
}
