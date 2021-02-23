//
//  Themes.swift
//  Concentration
//
//  Created by George Solorio on 2/22/21.
//

import UIKit

enum Theme: CaseIterable {

   case halloween
   case valentines
   case christmas
   case summer
   case animals
   case nature
   
   var set: (emojis: [String], backgroundColor: UIColor, cardColor: UIColor) {
      switch self {
      case .halloween:
         return (["👻", "🎃", "🧙‍♀️", "🧙‍♂️", "🍭", "🕸", "🍬", "💀"], #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1))
      case .valentines:
         return (["💝", "🎀", "😍", "🍫", "🏩", "💞", "💒", "💘"], #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1), #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
      case .christmas:
         return (["🥶", "❄️", "🎅", "🧑‍🎄", "🎁", "🎄", "🌨", "☃️"], #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1), #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
      case .summer:
         return (["😎", "☀️", "🌞", "⛱", "🍉", "🥵", "🏖", "🍹"], #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1))
      case .animals:
         return (["🐒", "🐈", "🐀", "🐘", "🐿", "🐅", "🐄", "🦩"], #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
      case .nature:
         return (["🍂", "🦃", "🥧", "🐿", "🦌", "🪵", "🍁", "🍃"], #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1), #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
      }
   }
}
