//
//  TextStyle.swift
//  PokerRules
//
//  Created by Mathias Voelcker on 17/08/16.
//  Copyright © 2016 Mathias Voelcker. All rights reserved.
//

import UIKit

class LabelStyle: UILabel {
    
    
    override func awakeFromNib() {
        setHandRuleStyle()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setHandRuleStyle()
    }
    
    func setHandRuleStyle(){
        self.textColor = UIColor.whiteColor()
        self.textAlignment = .Center
        self.lineBreakMode = .ByWordWrapping
        self.numberOfLines = 0
    }
    
}
