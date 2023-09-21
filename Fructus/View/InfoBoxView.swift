//
//  İnfoBoxView.swift
//  Fructus
//
//  Created by Bartu Kara on 21.09.2023.
//

import SwiftUI

struct InfoBoxView: View {
    // MARK: - Properties
    
    var fruit : Fruit
    let nutrients : [String] = ["Energy","Sugar","Fat","Protein","Vitamins","Minerals"]
    
    // MARK: - Body
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional Value per 100g"){
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical,2)
                    HStack{
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }//: Box
    }
}

// MARK: - Preview
struct InnfoBoxView_Previews: PreviewProvider {
    static var previews: some View {
        InfoBoxView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
