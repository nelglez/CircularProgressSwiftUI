//
//  OutlineView.swift
//  CircularProgressSwiftUI
//
//  Created by Nelson Gonzalez on 1/11/20.
//  Copyright © 2020 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct OutlineView: View {
    var percentage: CGFloat = 50
    var colors: [Color] = [Color.red]
    
    var body: some View {
        ZStack {
            Circle().fill(Color.clear).frame(width: 250, height: 250).overlay(Circle().trim(from: 0, to: percentage * 0.01).stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round)).fill(AngularGradient(gradient: Gradient(colors: colors), center: .center, startAngle: .zero, endAngle: Angle(degrees: 360)))).animation(.spring(response: 2.0, dampingFraction: 1.0, blendDuration: 1.0))
        }
    }
}

struct OutlineView_Previews: PreviewProvider {
    static var previews: some View {
        OutlineView()
    }
}
