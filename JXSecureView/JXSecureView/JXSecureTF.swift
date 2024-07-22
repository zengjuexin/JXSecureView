//
//  JXSecureTF.swift
//  JXSecureView
//
//  Created by zeng on 2024/7/22.
//

import UIKit

class JXSecureTF: UITextField {
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let hitTestView = super.hitTest(point, with: event)
        if hitTestView == self {
            return nil
        }
        return hitTestView
    }
    
    override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        return false
    }
    
    override var isFirstResponder: Bool {
        return false
    }
    
    override var canResignFirstResponder: Bool {
        return false
    }
    

}
