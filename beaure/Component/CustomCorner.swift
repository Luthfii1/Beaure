//
//  CustomCorner.swift
//  beaure
//
//  Created by Luthfi Misbachul Munir on 02/04/24.
//

import SwiftUI

struct CustomCorner: Shape {
    var cornerRadii: (topLeft: CGFloat, topRight: CGFloat, bottomLeft: CGFloat, bottomRight: CGFloat)
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let width = rect.size.width
        let height = rect.size.height
        
        let bottomLeftCorner = CGPoint(x: 0, y: height)
        let bottomRightCorner = CGPoint(x: width, y: height)
        let topLeftCorner = CGPoint(x: 0, y: 0)
        let topRightCorner = CGPoint(x: width, y: 0)
        
        path.move(to: CGPoint(x: cornerRadii.topLeft, y: 0))
        path.addLine(to: CGPoint(x: width - cornerRadii.topRight, y: 0))
        path.addArc(center: topRightCorner, radius: cornerRadii.topRight, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
        path.addLine(to: CGPoint(x: width, y: height - cornerRadii.bottomRight))
        path.addArc(center: bottomRightCorner, radius: cornerRadii.bottomRight, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
        path.addLine(to: CGPoint(x: cornerRadii.bottomRight, y: height))
        path.addArc(center: bottomLeftCorner, radius: cornerRadii.bottomLeft, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
        path.addLine(to: CGPoint(x: 0, y: cornerRadii.topLeft))
        path.addArc(center: topLeftCorner, radius: cornerRadii.topLeft, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
        
        return path
    }
}
