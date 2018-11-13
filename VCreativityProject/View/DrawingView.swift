//
//  DrawingView.swift
//  VCreativityProject
//
//  Created by Chambers, Eden on 11/5/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class DrawingView: UIView
{
    public override func draw(_ rect: CGRect) -> Void
    {
        createPicture().stroke()
        
    }
    // V This makes a circle. V
    private func createPicture() -> UIBezierPath
    {
        let figure : UIBezierPath = UIBezierPath()
        
        UIColor.red.setStroke()
        figure.lineWidth = 7.0
        
        figure.addArc(withCenter: CGPoint(x:200, y:200),
                      radius: CGFloat(20),
                      startAngle: CGFloat(0),
                      endAngle: CGFloat(2) * CGFloat.pi,
                      clockwise: true)
        
        figure.move(to: CGPoint(x:200, y:220))
        figure.addLine(to: CGPoint(x: 200, y: 270))
        figure.move(to: CGPoint(x: 180, y:240))
        figure.addLine(to: CGPoint(x:220, y:240))
        figure.move(to: CGPoint(x: 200, y:270))
        figure.addLine(to: CGPoint(x: 180, y:300))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 220, y: 300))
        
        return figure
    }
}
