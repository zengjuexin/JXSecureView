//
//  JXSecureView.swift
//  JXSecureView
//
//  Created by zeng on 2024/7/22.
//

import UIKit

class JXSecureView: UIView {
    
    private lazy var textField: JXSecureTF = {
        let view = JXSecureTF()
        view.isSecureTextEntry = true
        return view
    }()
    
    private lazy var secureView: UIView = {
        let secureView = textField.subviews.first ?? UIView()
        
        secureView.subviews.forEach {
            $0.removeFromSuperview()
        }
        return secureView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        
        self.addSubview(textField)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func addSubview(_ view: UIView) {
        if view == self.textField {
            super.addSubview(view)
        } else {
            self.secureView.addSubview(view)
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.textField.frame = self.bounds
    }
}
