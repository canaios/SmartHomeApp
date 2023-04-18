//
//  ViewController.swift
//  SmartLife
//
//  Created by woojin Choi on 2023/04/18.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var thermoView: UIView!
    @IBOutlet weak var waterView: UIView!
    @IBOutlet weak var lightView: UIView!
    @IBOutlet weak var timerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 아울렛 변수들의 테두리 설정
        thermoView.setBorderShadow(borderWidth:0.5, cornerRadius: 10, borderColor: UIColor.systemGray.cgColor, useShadowEffect: false)
        waterView.setBorderShadow(borderWidth: 0.5, cornerRadius: 10, borderColor: UIColor.systemGray.cgColor, useShadowEffect: false)
        lightView.setBorderShadow(borderWidth: 0.5, cornerRadius: 10, borderColor: UIColor.systemGray.cgColor, useShadowEffect: false)
        timerView.setBorderShadow(borderWidth: 0.5, cornerRadius: 10, borderColor: UIColor.systemGray.cgColor, useShadowEffect: false)
    }
}

extension UIView {
    
    func setBorderShadow(borderWidth: CGFloat, cornerRadius: CGFloat, borderColor: CGColor = UIColor.systemGray.cgColor, useShadowEffect: Bool) {
        // 테두리 설정
        self.layer.borderWidth = borderWidth
        self.layer.cornerRadius = cornerRadius
        self.layer.borderColor = borderColor
        
        if useShadowEffect {
            // 그림자 설정
            self.layer.shadowColor = UIColor.black.cgColor
            self.layer.shadowOffset = CGSize(width: 2, height: 2)
            self.layer.shadowOpacity = 0.5
            self.layer.shadowRadius = 5
        }
    }
}

