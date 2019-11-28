# Card-List-with-SwiftUI
该代码示例展示如何使用SwiftUI搭建移动端基础的卡片式内容展示列表。 

<img src="demo.png" width="500" align=center />

# Main code

### Card content

```swift
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
```

### List content

```swift
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
```
