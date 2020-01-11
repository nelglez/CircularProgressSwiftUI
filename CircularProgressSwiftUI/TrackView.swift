//
//  TrackView.swift
//  CircularProgressSwiftUI
//
//  Created by Nelson Gonzalez on 1/11/20.
//  Copyright © 2020 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct TrackView: View {
    var colors: [Color] = [Color.green]
    var body: some View {
        ZStack {
            Circle().fill(Color.gray).frame(width: 250, height: 250).overlay(Circle().stroke(style: StrokeStyle(lineWidth: 20)).fill(AngularGradient(gradient: Gradient(colors: colors), center: .center)))
        }
    }
}

struct TrackView_Previews: PreviewProvider {
    static var previews: some View {
        TrackView()
    }
}
