//
//  Converter.swift
//  ChessConv
//
//  Created by Даниил Максимчик on 4/4/20.
//  Copyright © 2020 Даниил Максимчик. All rights reserved.
//

import Foundation
import Cocoa

class Converter {
  var str: String = ""
  var mas: [Chessman?] = []
  
  init(str: String) {
    self.str = str
  }
    
  func parsing() -> Void {
    var result: [String] =  str.components(separatedBy: ["\n"])
    for i in stride(from: 0, to: result.count / 2, by: 1) {
      result.remove(at: i)
    }
    print(result)
    

    for temp in result {
      mas.append(nil)
      mas.append(Chessman(str: temp, col: 1))  // 1 - black, !1 - white
    }
  }
}
