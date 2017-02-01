//
//  ShowHandVC.swift
//  PokerRules
//
//  Created by Mathias Voelcker on 31/07/16.
//  Copyright © 2016 Mathias Voelcker. All rights reserved.
//

import UIKit

class HandDetailsVC: UIViewController {

    
    @IBOutlet weak var handTitleConstraint: NSLayoutConstraint!
    @IBOutlet weak var handDescriptionConstraint: NSLayoutConstraint!
    
    
    @IBOutlet weak var handRuleLabel: UILabel!
    let backgroundImage = Background()
    @IBOutlet weak var handImageView: UIImageView!    
    @IBOutlet weak var handDescriptionLabel: UILabel!
    @IBOutlet weak var goBackButton: UIButton!
    
    var handImage: UIImage!
    var toPass: Int!
    let handDetails = HandDetails()
    
    var animEngine: AnimationEngine!
    
    override func viewDidLoad() {
        animEngine = AnimationEngine(constraints: [handTitleConstraint, handDescriptionConstraint])
        super.viewDidLoad()
        handDetails.defineHand(toPass)
        self.view.backgroundColor = UIColor(patternImage: backgroundImage.getImage())
        
        goBackButton.backgroundColor = UIColor(patternImage: handDetails.getGoBackIcon())
        handRuleLabel.text = handDetails.getHandRuleLabelText()
        handDescriptionLabel.text = handDetails.getHandDescriptionLabelText()
        handImageView.image = handDetails.getHandImage()
        animEngine.animateOnScreen()
    }

}
