//
//  ContentView.swift
//  CircularProgressSwiftUI
//
//  Created by Nelson Gonzalez on 1/11/20.
//  Copyright © 2020 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var percentage: CGFloat = 0
    
    var body: some View {
        ZStack {
            Color.gray.edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                ZStack {
                    PulsationView()
                    TrackView()
                    LabelView(percentage: percentage)
                    OutlineView(percentage: percentage)
                }
                Spacer()
                HStack {
                    Slider(value: $percentage, in: 0...100).frame(width: 300)
//                    Button(action: {
//                        self.percentage = CGFloat(85)
//                    }) {
//                        Image(systemName: "play.circle.fill").resizable().frame(width: 65, height: 65).aspectRatio(contentMode: .fit).foregroundColor(.white)
//                    }
//                    Button(action: {
//                        self.percentage = CGFloat(0)
//                    }) {
//                        Image(systemName: "stop.circle.fill").resizable().frame(width: 65, height: 65).aspectRatio(contentMode: .fit).foregroundColor(.white)
//                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
