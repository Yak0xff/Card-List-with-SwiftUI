//
//  ContentView.swift
//  CardListDemo
//
//  Created by Robin on 2019/11/27.
//  Copyright © 2019 RobinChao. All rights reserved.
//

import SwiftUI

private let dateFormatter: DateFormatter = {
    let dateFormatter = DateFormatter()
    dateFormatter.dateStyle = .medium
    return dateFormatter
}()

struct ContentView: View {
    let cardDatas: [CardData] = {
        var datas: [CardData] = []
        datas.append(CardData(id: 1, image: "swiftui-button", category: "SwiftUI", heading: "使用SwiftUI绘制视图的圆角边框", author: "Written by Robin Chao"))
        datas.append(CardData(id: 2, image: "natural-language-api", category: "MachineLearning", heading: "教程 : 如何使用Google提供的NLP接口实现聊天机器人程序", author: "Written by Robin Chao"))
        datas.append(CardData(id: 3, image: "macos-programming", category: "MacOS", heading: "开始使用Swift构建MacOS应用软件", author: "Written by Robin Chao"))
        datas.append(CardData(id: 4, image: "flutter-app", category: "Flutter", heading: "使用Flutter构建漂亮的本地化应用", author: "Written by Robin Chao"))
        
        return datas
    }()
    
    var currentDate = Date()
    
    @State var progress: CGFloat = 0.0
    
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView(.vertical, showsIndicators: true){
                Spacer()
                HStack {
                    VStack(alignment: .leading) {
                        Text("\(currentDate, formatter: dateFormatter)")
                            .font(.headline)
                            .foregroundColor(.secondary)
                        Text("Your Reading")
                            .font(.title)
                            .fontWeight(.black)
                            .foregroundColor(.primary)
                    }
                    .padding(.leading, 15)
                    Spacer()
                    Image("mona-heart-hug-facebook")
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                        .frame(width: 45, height: 45)
                        .padding(.trailing, 15)
                }
                .padding(.bottom, -10)
                
                ForEach(self.cardDatas) { card in
                    CardView(card: card)
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
