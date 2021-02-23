//
//  ViewController.swift
//  Concentration
//
//  Created by George Solorio on 2/22/21.
//

import UIKit

class ConcentrationViewController: UIViewController {

   lazy var game = Concentration(numberOfPairsOfCards: (cardButtons.count + 1) / 2)
   var emojiChoices = [String]()
   var cardColor: UIColor?
   var score = 0 {
      didSet {
         scoreLabel.text = "Score: \(score)"
      }
   }
   
   var emoji = [Int: String]()
   
   @IBOutlet var cardButtons: [UIButton]!
   @IBOutlet weak var scoreLabel: UILabel!
   @IBOutlet weak var newGameButton: UIButton!
   
   @IBAction func touchCard(_ sender: UIButton) {
      if let cardNumber = cardButtons.firstIndex(of: sender) {
         game.choseCard(at: cardNumber)
         score = game.score
         updateViewFromModel()
      } else {
         print("Chosen card was no in cardButtons")
      }
   }
   
   @IBAction func newGame(_ sender: UIButton) {
      game = Concentration(numberOfPairsOfCards: (cardButtons.count + 1) / 2)
      score = 0
      setTheme()
   }
   
   func setTheme() {
      if let theme = Theme.allCases.randomElement() {
         emojiChoices = theme.set.emojis
         view.backgroundColor = theme.set.backgroundColor
         scoreLabel.textColor = theme.set.cardColor
         newGameButton.setTitleColor(theme.set.cardColor, for: .normal)
         cardColor = theme.set.cardColor
         emoji = [Int: String]()
         updateViewFromModel()
      }
   }
   
   override func viewDidLoad() {
      setTheme()
   }
   
   func updateViewFromModel() {
      for index in cardButtons.indices {
         let button = cardButtons[index]
         let card = game.cards[index]
         
         if card.isFaceUp {
            button.setTitle(emoji(for: card), for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
         } else {
            button.setTitle("", for: .normal)
            button.backgroundColor = card.isMatched ? #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0) : cardColor
         }
      }
   }
   
   func emoji(for card: Card) -> String {
      
      if emoji[card.id] == nil, emojiChoices.count > 0 {
         let randomIndex = Int(arc4random_uniform(UInt32(emojiChoices.count)))
         emoji[card.id] = emojiChoices.remove(at: randomIndex)
      }
      
      return emoji[card.id] ?? "?"
   }
}

