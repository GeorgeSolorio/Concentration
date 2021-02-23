//
//  Card.swift
//  Concentration
//
//  Created by George Solorio on 2/22/21.
//

import Foundation

struct Card {
   var id: Int
   var isFaceUp = false
   var isMatched = false
   static var identifierFactory = 0
   
   static func getUniqueIdentifier() -> Int {
      identifierFactory += 1
      return identifierFactory
   }
   
   init() {
      id = Card.getUniqueIdentifier()
   }
}
