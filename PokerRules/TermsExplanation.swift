//
//  DictionaryStrings.swift
//  PokerRules
//
//  Created by Mathias Voelcker on 21/08/16.
//  Copyright © 2016 Mathias Voelcker. All rights reserved.
//

import UIKit

class TermsExplanation {
    
    var termText = ""
    var explanationText = ""
    
    func defineTerm(row: Int){
        switch(row){
        case 1:
            termText = NSLocalizedString("turn order section title", comment: "the title of the section turn chronological order")
            break
        case 2:
            termText = "Pré-Flop"
            explanationText = NSLocalizedString("pre-flop description", comment: "description of the pre-flop turn")
            break
        case 3:
            termText = "Flop"
            explanationText = NSLocalizedString("flop explanation", comment: "description of the flop turn")
            break
        case 4:
            termText = "Turn"
            explanationText = NSLocalizedString("turn explanation", comment: "description of the turn turn")
            break
        case 5:
            termText = "River"
            explanationText = NSLocalizedString("river explanation", comment: "description of the river turn")
            break
        case 6:
            termText = NSLocalizedString("players section title", comment: "the title of the section players")
            break
        case 7:
            termText = "Dealer"
            explanationText = NSLocalizedString("dealer explanation", comment: "description of the player dealer")
            break
        case 8:
            termText = "Big Blind"
            explanationText = NSLocalizedString("big blind explanation", comment: "description of the player big blind")
            break
        case 9:
            termText = "Small Blind"
            explanationText = NSLocalizedString("small blind explanation", comment: "description of the player small blind")
            break
        case 10:
            termText = NSLocalizedString("plays section title", comment: "the title of the section plays")
            break
        case 11:
            termText = NSLocalizedString("bet", comment: "name of the play bet")
            explanationText = NSLocalizedString("bet explanation", comment: "explanation of the bet play")
            break
        case 12:
            termText = NSLocalizedString("fold", comment: "name of the play fold")
            explanationText = NSLocalizedString("fold explanation", comment: "explanation of the fold play")
            break
        case 13:
            termText = NSLocalizedString("call", comment: "name of the play call")
            explanationText = NSLocalizedString("call explanation", comment: "explanation of the call play")
            break
        case 14:
            termText = NSLocalizedString("raise", comment: "name of the play raise")
            explanationText = NSLocalizedString("raise explanation", comment: "explanation of the raise play")
            break
        case 15:
            termText = NSLocalizedString("check", comment: "name of the play check")
            explanationText = NSLocalizedString("check explanation", comment: "explanation of the check play")
            break
        default:
            termText = "All-in"
            explanationText = NSLocalizedString("all-in explanation", comment: "explanation of the all-in play")
            break
        }
    }
    
    func getTermText() -> String{
        return termText
    }
    
    func getExplanationText() -> String{
        return explanationText
    }
}
