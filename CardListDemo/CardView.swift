//
//  CardView.swift
//  CardListDemo
//
//  Created by Robin on 2019/11/27.
//  Copyright © 2019 RobinChao. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var card: CardData
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(card.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                VStack(alignment: .leading) {
                    Text(card.category)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(card.heading)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    Text(card.author.uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                .layoutPriority(100)
                    
                Spacer()
            }
            .padding()
        }
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10)
        .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
        )
        .padding([.top, .horizontal])
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: CardData(id: 1, image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Written by Robin Chao"))
    }
}
