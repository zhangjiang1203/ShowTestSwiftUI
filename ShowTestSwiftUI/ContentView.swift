//
//  ContentView.swift
//  ShowTestSwiftUI
//
//  Created by zj on 2021/3/9.
//

import SwiftUI

struct ContentView: View {
    
    let row: [CalculatorEnum] = [.digit(1),.digit(2),.digit(3),.op(.plus)]
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 10, content: {
            Spacer()
            Text("0")
                .font(.system(size: 76))
                .foregroundColor(.black)
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
            
            
            CustomButtonRow(row:[.command(.clear),.command(.flip),.command(.present),.op(.devide)])
            CustomButtonRow(row:[.digit(7),.digit(8),.digit(9),.op(.multiply)])
            CustomButtonRow(row:[.digit(4),.digit(5),.digit(6),.op(.minus)])
            CustomButtonRow(row:[.digit(1),.digit(2),.digit(3),.op(.plus)])
            CustomButtonRow(row:[.digit(0),.dot,.op(.equal),])
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


