//
//  CustonButtonItem.swift
//  ShowTestSwiftUI
//
//  Created by zj on 2021/3/9.
//

import UIKit
import SwiftUI

struct CustonButtonItem: View {
    
    let fontSize: CGFloat = 38
    let title: String
    let size: CGSize
    let foregroundColor: Color
    let backgroundName: String
    let callback: ()-> Void
    
    
    init(_ title:String,size:CGSize,foregroundColor: Color,background:String,action:@escaping ()->Void) {
        self.title = title
        self.size = size
        self.foregroundColor = foregroundColor
        self.backgroundName = background
        self.callback = action
    }
    
    var body: some View {
        Button(action: callback, label: {
            Text(title)
                .font(.system(size: fontSize))
                .foregroundColor(foregroundColor)
                .frame(width: size.width, height: size.height, alignment: .center)
                .background(Color(backgroundName))
                .cornerRadius(size.width/2)
        })
    }
}


struct CustomButtonRow: View {
    let row:[CalculatorEnum]
    
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 5, content: {
            ForEach(row,id:\.self){item in
                CustonButtonItem.init(item.title, size: item.size, foregroundColor: .white, background: item.backgroundName) {
                    print("当前操作\(item.title)")
                }
            }
        })
    }
}


