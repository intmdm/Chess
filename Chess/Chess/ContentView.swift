//
//  ContentView.swift
//  Chess
//
//  Created by Даниил Максимчик on 4/2/20.
//  Copyright © 2020 Даниил Максимчик. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack {
        Text("Chess").font(.title).frame(maxWidth: .some(500), maxHeight: .some(50))
        
        HStack {
          TextField("Enter the string", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/).padding().frame(width: .some(200), height: (50))
          Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
          Text("Convert to html")
          }
        }
      }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
