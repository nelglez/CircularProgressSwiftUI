//
//  LabelView.swift
//  CircularProgressSwiftUI
//
//  Created by Nelson Gonzalez on 1/11/20.
//  Copyright © 2020 Nelson Gonzalez. All rights reserved.
//

import SwiftUI

struct LabelView: View {
    var percentage: CGFloat = 0
    
    var body: some View {
        ZStack {
            Text(String(format: "%.0f", percentage)).font(.system(size: 65)).fontWeight(.heavy).colorInvert()
        }
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView()
    }
}
