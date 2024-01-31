//
//  File.swift
//  MySpar
//
//  Created by Ashot Kirakosyan on 31.01.24.
//

import SwiftUI

struct CurvedRectangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let width = rect.size.width
        let height = rect.size.height
        let curveHeight: CGFloat = 10
        
        let startPoint = CGPoint(x: 0, y: height + 6)
        let endPoint = CGPoint(x: width, y: height)
        let controlPoint1 = CGPoint(x: width * 0.25, y: height + curveHeight)
        let controlPoint2 = CGPoint(x: width * 0.75, y: height + curveHeight)
        
        path.move(to: startPoint)
        path.addCurve(to: endPoint, control1: controlPoint1, control2: controlPoint2)
        path.addLine(to: CGPoint(x: width - 10, y: -4))
        path.addCurve(to: CGPoint(x: 0, y: 11), control1: CGPoint(x: width * 0.5, y: curveHeight), control2: CGPoint(x: width * 0.25, y: curveHeight))
        path.closeSubpath()
        
        return path
    }
}

