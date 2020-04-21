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

enum EnglishNotation: String {
  case king = "K"    //Король
  case castle = "R"  //Ладья
  case bishop = "B"  //Слон
  case pawn = ""     //Пешка
  case knight = "N"  //Конь
  case queen = "Q"   //Ферзь
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
    
    if col == 1 {
      self.color = .black
      self.figureSimbol = "♟"
    } else {
      self.color = .white
      self.figureSimbol = "♙"
    }
    
    if str.count == 2 {
      self.type = .pawn
      
      let first = str.first.map(String.init(_:))
      let last = str.last.map(String.init(_:)).flatMap(Int.init(_:))
      self.setCoordinates(char: first ?? "a", int: last ?? 1)
    }
     if str.count == 3 {
      let first = str.first.map(String.init(_:))
      var str2 = str
      str2.removeFirst()
      let secound = str2.first.map(String.init(_:))
      let thered = str.last.map(String.init(_:)).flatMap(Int.init(_:))
      
      switch first {
        case EnglishNotation.knight.rawValue:
          self.type = .knight
        case EnglishNotation.bishop.rawValue:
          self.type = .bishop
        case EnglishNotation.castle.rawValue:
          self.type = .castle
        case EnglishNotation.king.rawValue:
          self.type = .king
        case EnglishNotation.pawn.rawValue:
          self.type = .pawn
        case EnglishNotation.queen.rawValue:
          self.type = .queen
        default:
          print("Неверный тип")
          self.type = .pawn
      }
      
      self.setCoordinates(char: secound ?? "a", int: thered ?? 1)
    }
  }
  
  func setCoordinates(char c: String, int n: Int) {
    self.coordinates = (c, n)
  }
  func kill() {
    self.coordinates = nil  /////
  }
}
