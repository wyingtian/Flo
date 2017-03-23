//
//  PushButtonView.swift
//  Flo
//
//  Created by Ying on 3/9/17.
//  Copyright © 2017 Ying. All rights reserved.
//

import UIKit
@IBDesignable
class PushButtonView: UIButton {
@IBInspectable var fillColor: UIColor = UIColor.blue
@IBInspectable var isAddButton: Bool = true
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
     */
    override func draw(_ rect: CGRect) {
        var path = UIBezierPath(ovalIn: rect)
        fillColor.setFill()
        path.fill()
    
        let plusHeight: CGFloat = 3.0
        let plusWidth: CGFloat = min(bounds.width, bounds.height) * 0.6
        var plusPath = UIBezierPath()
        plusPath.lineWidth = plusHeight
        plusPath.move(to: CGPoint(x:bounds.width/2 - plusWidth/2,
                                     y:bounds.height/2))
        
        plusPath.addLine(to: CGPoint(x:bounds.width/2 + plusWidth/2,
                                        y:bounds.height/2))
        
        plusPath.move(to: CGPoint(x:bounds.width/2,
                                  y:bounds.height/2 - plusWidth/2))
        
        UIColor.white.setStroke()
        
        plusPath.stroke()
        
        plusPath.addLine(to: CGPoint(x:bounds.width/2,
                                     y:bounds.height/2 + plusWidth/2))
        UIColor.white.setStroke()
        
        plusPath.stroke()
    
    }
}
