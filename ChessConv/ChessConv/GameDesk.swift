//
//  GameDesk.swift
//  Chess
//
//  Created by Даниил Максимчик on 4/3/20.
//  Copyright © 2020 Даниил Максимчик. All rights reserved.
//

import Cocoa

class GameDesk {
  var desk: [Int:[String: Chessman]] = [:]
  init() {
    for i in 1...8 {
      desk[i] = [:]
    }
  }
  
  subscript(alpha: String, number: Int) -> Chessman? {
    get {
      if let chessman = self.desk[number]![alpha] {
        return chessman
      }
      return nil
    }
    set {                                                    
      self.setChessman(chess: newValue!, coordinates: (alpha, number))
    }
  }
  
  func setChessman(chess: Chessman, coordinates: (String, Int)) {
    if let oldCoordinates = chess.coordinates {
      desk[oldCoordinates.1]![oldCoordinates.0] = nil
    }
    self.desk[coordinates.1]![coordinates.0] = chess
    chess.setCoordinates(char: coordinates.0, int: coordinates.1)
  }
  func printDesk() {
    for x in 1...8 {
      print(x, terminator: " ")
      for y in 1...8 {
        if let symb = self[String(UnicodeScalar(UInt8(y + 64))), x]?.figureSimbol {
          print(symb, terminator: " ")
        } else {
          print("_", terminator: " ")
        }
      }
      print()
      if x == 8 {
        print("  A B C D E F G H")
      }
    }
  }
}

