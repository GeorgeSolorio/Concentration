//
//  Concentration.swift
//  Concentration
//
//  Created by George Solorio on 2/22/21.
//

import Foundation

class Concentration {
   
   var cards = [Card]()
   var indexOfOneAndOnlyFaceUpCard: Int?
   var score = 0
   
   init(numberOfPairsOfCards: Int) {
      for _ in 1...numberOfPairsOfCards {
         let card = Card()
         cards += [card, card]
      }
      
      cards.shuffle()
   }
   
   func choseCard(at index: Int) {
      
      if !cards[index].isMatched {
         
         if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
            
            if cards[matchIndex].id == cards[index].id {
               cards[matchIndex].isMatched = true
               cards[index].isMatched = true
               score += 2
            } else {
               score -= 1
            }
            
            cards[index].isFaceUp = true
            indexOfOneAndOnlyFaceUpCard = nil
            
         } else {
            
            for flipDownIndex in cards.indices {
               cards[flipDownIndex].isFaceUp = false
            }
            
            cards[index].isFaceUp = true
            indexOfOneAndOnlyFaceUpCard = index
         }
      }
   }
}
