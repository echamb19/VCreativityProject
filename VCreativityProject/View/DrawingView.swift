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
        createFigure().stroke()
        
    }
    
    private func createFigure() ->UIBezierPath
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
        
        return figure
    }
}
