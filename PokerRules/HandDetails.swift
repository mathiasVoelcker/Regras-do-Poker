//
//  HandDetails.swift
//  PokerRules
//
//  Created by Mathias Voelcker on 14/08/16.
//  Copyright © 2016 Mathias Voelcker. All rights reserved.
//

import UIKit

class HandDetails{
    
    var handRuleLabelText : String = ""
    var handDescriptionLabelText : String = ""
    var handImage : UIImage = UIImage(named: "cartaAlta.png")!
    var handImageName : String = ""
    var goBackIcon : UIImage = UIImage(named: "previous.png")!
    
    func defineHand(row: Int){
        switch(row){
        case(1):
            handRuleLabelText = NSLocalizedString("high card", comment: "name of the hand high card")
            handDescriptionLabelText = NSLocalizedString("high card description", comment: "description of the hand high card")
            handImageName = "cartaAlta.png"
            handImage = UIImage(named: "cartaAlta.png")!
            break
        case(2):
            handRuleLabelText = NSLocalizedString("pair", comment: "name of the hand pair")
            handDescriptionLabelText = NSLocalizedString("pair description", comment: "description of the hand high card")
            handImage = UIImage(named: "par.png")!
            break
        case(3):
            handRuleLabelText = NSLocalizedString("two pairs", comment: "name of the hand two pairs")
            handDescriptionLabelText = NSLocalizedString("two pairs description", comment: "description of the hand two pairs")
            handImage = UIImage(named: "doisPares.png")!
        case(4):
            handRuleLabelText = NSLocalizedString("three of a kind", comment: "name of the hand three of a kind")
//            "Trinca"
            handDescriptionLabelText = NSLocalizedString("three of a kind description", comment: "description of the hand three of a kind")
            handImage = UIImage(named: "trinca.png")!
        case(5):
            handRuleLabelText = NSLocalizedString("straight", comment: "name of the hand straght")
            handDescriptionLabelText = NSLocalizedString("straight description", comment: "description of the hand straight")
            handImage = UIImage(named: "sequencia.png")!
        case(6):
            handRuleLabelText = NSLocalizedString("flush", comment: "name of the hand flush")
            handDescriptionLabelText = NSLocalizedString("flush description", comment: "description of the hand flush")
            handImage = UIImage(named: "flush.png")!
        case(7):
            handRuleLabelText = NSLocalizedString("full house", comment: "name of the hand full house")
            handDescriptionLabelText = NSLocalizedString("full house description", comment: "description of the hand full house")
            handImage = UIImage(named: "fullhouse.png")!
        case(8):
            handRuleLabelText = NSLocalizedString("four of a kind", comment: "name of the hand four of a kind")
            handDescriptionLabelText = NSLocalizedString("four of a kind description", comment: "description of the hand four of a kind")
            handImage = UIImage(named: "quadra.png")!
        default:
            handRuleLabelText = NSLocalizedString("straight flush", comment: "name of the hand straight flush")
            handDescriptionLabelText = NSLocalizedString("straight flush description", comment: "description of the hand straight flush")
            handImage = UIImage(named: "straightFlush.png")!
        }
    }
    
    
    func getHandRuleLabelText() -> String{
        return handRuleLabelText
    }
    
    func getHandDescriptionLabelText() -> String{
        return handDescriptionLabelText
    }
    
    func getHandImage() -> UIImage{
        return handImage
    }
    
    func getGoBackIcon() -> UIImage{
        return goBackIcon
    }
    
}
