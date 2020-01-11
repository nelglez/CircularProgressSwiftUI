//
//  PullsationView.swift
//  CircularProgressSwiftUI
//
//  Created by Nelson Gonzalez on 1/11/20.
//  Copyright © 2020 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct PulsationView: View {
    @State private var pulsate = false
    var colors: [Color] = [Color.blue]
    
    var body: some View {
        ZStack {
            Circle().fill(Color.blue).frame(width: 245, height: 245).scaleEffect(pulsate ? 1.3 : 1.1).animation(Animation.easeInOut(duration: 1.1).repeatForever(autoreverses: true)).onAppear {
                self.pulsate.toggle()
            }
        }
    }
}

struct PulsationView_Previews: PreviewProvider {
    static var previews: some View {
        PulsationView()
    }
}
