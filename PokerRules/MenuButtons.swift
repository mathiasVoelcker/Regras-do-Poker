//
//  MenuButtons.swift
//  PokerRules
//
//  Created by Mathias Voelcker on 26/07/16.
//  Copyright © 2016 Mathias Voelcker. All rights reserved.
//

import UIKit
import pop

@IBDesignable

class MenuButtons: UIButton {
    
    override func awakeFromNib() {
        setDesign()
        scaleAnimation()
        self.addTarget(self, action: #selector(scaleToSmall), forControlEvents: .TouchDown)
        self.addTarget(self, action: #selector(scaleDefault), forControlEvents: .TouchUpInside)
        self.addTarget(self, action: #selector(scaleDefault), forControlEvents: .TouchUpOutside)
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setDesign()
    }
    
    func setDesign(){
        setBackground()
        self.tintColor = UIColor.whiteColor()
        self.layer.cornerRadius = 15.0
        self.layer.borderWidth = 0.6
        self.layer.borderColor = UIColor.whiteColor().CGColor
    }
    
    func setBackground() {
        let color = UIColor(red: 0x2E/255, green: 0x89/255, blue: 0x25/255, alpha: 0.7)
        self.layer.backgroundColor = color.CGColor
    }
    
    
    func scaleToSmall() {
        let scaleAnim = POPBasicAnimation(propertyNamed: kPOPLayerScaleXY)
        scaleAnim.toValue = NSValue(CGSize: CGSizeMake(0.9, 0.9))
        self.layer.pop_addAnimation(scaleAnim, forKey: "layerScaleSmallAnimation")
    }
    
    func scaleAnimation(){
        let scaleAnim = POPSpringAnimation(propertyNamed: kPOPLayerScaleXY)
        scaleAnim.velocity = NSValue(CGSize: CGSizeMake(3.0, 3.0))
        scaleAnim.toValue = NSValue(CGSize: CGSizeMake(1.0, 1.0))
        scaleAnim.springBounciness = 18
        self.layer.pop_addAnimation(scaleAnim, forKey: "layerScaleSprintAnimation")
    }
    
    func scaleDefault(){
        let scaleAnim = POPBasicAnimation(propertyNamed: kPOPLayerScaleXY)
        scaleAnim.toValue = NSValue(CGSize: CGSizeMake(1.0, 1.0))
        self.layer.pop_addAnimation(scaleAnim, forKey: "layerScaleDefaultAnimation")
    }
    
    
}
