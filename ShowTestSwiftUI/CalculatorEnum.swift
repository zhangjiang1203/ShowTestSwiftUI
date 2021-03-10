//
//  CalculatorEnum.swift
//  ShowTestSwiftUI
//
//  Created by zj on 2021/3/9.
//

import UIKit

enum CalculatorEnum {
    enum Op: String {
        case plus = "＋"
        case minus = "－"
        case multiply = "×"
        case devide = "÷"
        case equal = "＝"
    }
    
    enum Command:String{
        case clear = "AC"
        case flip = "+/-"
        case present = "%"
    }
    
    case digit(Int)
    case dot
    case op(Op)
    case command(Command)
}

extension CalculatorEnum {
    var title: String{
        switch self {
        case .digit(let value): return String(value)
        case .dot: return "."
        case .op(let value): return value.rawValue
        case .command(let value): return value.rawValue
        }
    }
    
    var size: CGSize{
        if case .digit(let value) = self, value == 0 {
            return CGSize(width: 88*2, height: 88)
        }
        return CGSize(width: 88, height: 88)
    }
    
    var backgroundName: String{
        switch self {
        case .dot,.digit:
            return "digitBackground"
        case .command(_):
            return "commandBackground"
        case .op(_):
            return "operatorBackground"
        }
    }
}


extension CalculatorEnum : Hashable {}
