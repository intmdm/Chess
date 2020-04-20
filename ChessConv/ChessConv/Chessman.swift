//
//  Chessman.swift
//  Chess
//
//  Created by Даниил Максимчик on 4/3/20.
//  Copyright © 2020 Даниил Максимчик. All rights reserved.
//

import Cocoa

enum ChessmanType {
  case king
  case castle
  case bishop
  case pawn
  case knight
  case queen
}
 
enum ChessmanColor {
  case black
  case white
}

class Chessman {
  var type: ChessmanType = .pawn
  var color: ChessmanColor = .black
  var coordinates: (String, Int)? = nil
  var figureSimbol: Character = "*"
  
  init(type: ChessmanType, color: ChessmanColor, figure: Character) {
    self.type = type
    self.color = color
    self.figureSimbol = figure
  }
  init(type: ChessmanType, color: ChessmanColor, figure: Character, coordinates: (String, Int)) {
    self.type = type
    self.color = color
    self.figureSimbol = figure
    self.setCoordinates(char: coordinates.0, int: coordinates.1)
  }
  init(str: String, col: Int) {
    print(str)
    if str.count == 2 {
      self.type = .pawn
      
      if col == 1 {
        self.color = .black
        self.figureSimbol = "♟"
      } else {
        self.color = .white
        self.figureSimbol = "♙"
      }
      
      let first = str.first.map(String.init(_:))
      let last = str.last.map(String.init(_:)).flatMap(Int.init(_:))
      self.setCoordinates(char: first ?? "a", int: last ?? 1)
    }
  }
  
  func setCoordinates(char c: String, int n: Int) {
    self.coordinates = (c, n)
  }
  func kill() {
    self.coordinates = nil  /////
  }
}
