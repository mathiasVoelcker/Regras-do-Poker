//
//  AnimationEngine.swift
//  Regras do Poker
//
//  Created by Mathias Voelcker on 10/12/16.
//  Copyright © 2016 Mathias Voelcker. All rights reserved.
//

import UIKit
import pop

class AnimationEngine{
    
    class var offscreenRightPosition: CGPoint {
        return CGPointMake(UIScreen.mainScreen().bounds.width, CGRectGetMidY(UIScreen.mainScreen().bounds))
    }
    
    class var offscreenLeftPosition: CGPoint {
        return CGPointMake(-UIScreen.mainScreen().bounds.width, CGRectGetMidY(UIScreen.mainScreen().bounds))
    }
    
    class var screenCenterPosition: CGPoint {
        return CGPointMake(CGRectGetMidX(UIScreen.mainScreen().bounds), CGRectGetMidY(UIScreen.mainScreen().bounds))
    }
    
    class var offscreenTopPosition: CGPoint {
        return CGPointMake(CGRectGetMidX(UIScreen.mainScreen().bounds), UIScreen.mainScreen().bounds.height)
    }
    
    var originalConstants = [CGFloat]()
    var constraints: [NSLayoutConstraint]!
    
    init(constraints: [NSLayoutConstraint]){
        for con in constraints {
            originalConstants.append(con.constant)
            con.constant = AnimationEngine.offscreenRightPosition.x
        }
        self.constraints = constraints
    }
    
    func animateOnScreen(){
        
        var index = 0
        repeat {
            let moveAnim = POPSpringAnimation(propertyNamed: kPOPLayoutConstraintConstant)
            moveAnim.toValue = self.originalConstants[index]
            moveAnim.springBounciness = 5
            moveAnim.springSpeed = 12
            
            let con = self.constraints[index]
            con.pop_addAnimation(moveAnim, forKey: "moveOnScreen")
            
            index += 1
        } while (index < self.constraints.count)
    }
    
    
}
