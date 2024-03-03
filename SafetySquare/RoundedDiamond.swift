//
//  RoundedDiamond.swift
//  SafetySquare
//
//  Created by Garrett Johnson on 2/27/24.
//
//  SPDX-License-Identifier: MIT
//

import Foundation

import SwiftUI

struct RoundedDiamond: Shape {
    var cornerRadius: CGFloat = 0
    
    func path(in rect: CGRect) -> Path {
        let r = cornerRadius
        
        var path = Path()

        // Top
        path.move(to: CGPoint(x: rect.midX - r, y: rect.minY + r))
        path.addQuadCurve(
            to: CGPoint(x: rect.midX + r, y: rect.minY + r),
            control: CGPoint(x: rect.midX, y: rect.minY)
        )
        
        // Right
        path.addLine(to: CGPoint(x: rect.maxX - r, y: rect.midY - r))
        path.addQuadCurve(
            to: CGPoint(x: rect.maxX - r, y: rect.midY + r),
            control: CGPoint(x: rect.maxX, y: rect.midY)
        )
        
        // Bottom
        path.addLine(to: CGPoint(x: rect.midX + r, y: rect.maxY - r))
        path.addQuadCurve(
            to: CGPoint(x: rect.midX - r, y: rect.maxY - r),
            control: CGPoint(x: rect.midX, y: rect.maxY)
        )
        
        // Left
        path.addLine(to: CGPoint(x: rect.minX + r, y: rect.midY + r))
        path.addQuadCurve(
            to: CGPoint(x: rect.minX + r, y: rect.midY - r),
            control: CGPoint(x: rect.minX, y: rect.midY)
        )

        path.closeSubpath()

        return path
    }
}

#Preview {
    RoundedDiamond(cornerRadius: 20).aspectRatio(1, contentMode: .fit)
}
