//
//  File.swift
//  Chess
//
//  Created by Даниил Максимчик on 4/4/20.
//  Copyright © 2020 Даниил Максимчик. All rights reserved.
//

import Foundation

let file = "Text.txt" //this is the file. we will write to and read from it
var text: String = ""

//if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
//    let fileURL = dir.appendingPathComponent(file)
//    //writing
//    do {
//        //try text.write(to: fileURL, atomically: false, encoding: .utf8)
//    }
//    //reading
//    do {
//        text = try String(contentsOf: fileURL, encoding: .utf8)
//    }
//}
//
//var temp = Converter(str: text)
//temp.input()
