//
//  TermExplanationVC.swift
//  PokerRules
//
//  Created by Mathias Voelcker on 21/08/16.
//  Copyright © 2016 Mathias Voelcker. All rights reserved.
//

import UIKit

class TermExplanationVC: UIViewController {

    
    let background = Background()
    let termExplanation = TermsExplanation()
    let handDetails = HandDetails()
    
    @IBOutlet weak var termTitleConstraint: NSLayoutConstraint!
    @IBOutlet weak var termExplanationConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var termLabel: UILabel!
    @IBOutlet weak var goBackButton: UIButton!
    @IBOutlet weak var explanationLabel: UILabel!
    var toPass: Int!
    var animEngine: AnimationEngine!
    
    override func viewDidLoad() {
        animEngine = AnimationEngine(constraints: [termTitleConstraint, termExplanationConstraint])
        super.viewDidLoad()
        termExplanation.defineTerm(toPass)
        self.view.backgroundColor = UIColor(patternImage: background.getImage())
        termLabel.text = termExplanation.getTermText()
        explanationLabel.text = termExplanation.getExplanationText()
        goBackButton.backgroundColor = UIColor(patternImage: handDetails.getGoBackIcon())
        animEngine.animateOnScreen()
    }
}