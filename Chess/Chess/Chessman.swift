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
  let type: ChessmanType
  let color: ChessmanColor
  var coordinates: (String, Int)? = nil
  let figureSimbol: Character
  
  init(type: ChessmanType, color: ChessmanColor, figure: Character) {
    self.type = type
    self.color = color
    self.figureSimbol = figure
  }
  init(type: ChessmanType, color: ChessmanColor, figure: Character, coordinates: (String, Int)) {
    self.type = type
    self.color = color
    self.figureSimbol = figure
    self.setCoordinates(char: coordinates.0, num: coordinates.1)
  }
  
  func setCoordinates(char c: String, num n: Int) {
    self.coordinates = (c, n)
  }
  func kill() {
    self.coordinates = nil  /////
  }
}
