//
//  ProgressBar.swift
//  CardListDemo
//
//  Created by Robin on 2019/11/28.
//  Copyright © 2019 RobinChao. All rights reserved.
//

import SwiftUI

struct ProgressBar: View {
    @Binding var progress: CGFloat
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .foregroundColor(.gray)
                .opacity(0.3)
                .frame(width: 345.0, height: 8.0)
            Rectangle()
                .foregroundColor(.blue)
                .frame(width: 200.0 * (progress / 100.0), height: 8.0)
        }
        .cornerRadius(4.0)
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(progress: .constant(69.0))
    }
}
