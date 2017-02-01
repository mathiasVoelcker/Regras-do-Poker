//
//  ViewController.swift
//  PokerRules
//
//  Created by Mathias Voelcker on 25/07/16.
//  Copyright © 2016 Mathias Voelcker. All rights reserved.
//

import UIKit

class MenuVC: UIViewController {

   
    @IBOutlet weak var btnHandsConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var btnTerms: MenuButtons!
    @IBOutlet weak var btnTermsConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    var animEngine: AnimationEngine!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = Background()
        let logoImageName = NSLocalizedString("logo image name", comment: "name of the logo image")
        let logoImage = UIImage(named: logoImageName)
        logoImageView.image = logoImage
        self.view.backgroundColor = UIColor(patternImage: image.getImage())
        self.animEngine = AnimationEngine(constraints: [btnHandsConstraint, btnTermsConstraint])
        self.animEngine.animateOnScreen()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    

    
//    override func viewDidAppear(animated: Bool) {
//        self.animEngine.animateOnScreen()
//    }

}

