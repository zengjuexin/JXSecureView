//
//  ViewController.swift
//  JXSecureView
//
//  Created by zeng on 2024/7/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let button1 = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        button1.setTitleColor(.black, for: .normal)
        button1.setTitle("录屏显示", for: .normal)
        button1.addTarget(self, action: #selector(handleButton), for: .touchUpInside)
        view.addSubview(button1)
        
        
        let secureView = JXSecureView(frame: CGRect(x: 100, y: 300, width: 100, height: 100))
        view.addSubview(secureView)
        
        let button2 = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        button2.setTitleColor(.black, for: .normal)
        button2.setTitle("录屏隐藏", for: .normal)
        button2.addTarget(self, action: #selector(handleButton), for: .touchUpInside)
        secureView.addSubview(button2)
    }

    @objc func handleButton() {
        print("点击")
    }
}

