//
//  CardsOrderTVC.swift
//  PokerRules
//
//  Created by Mathias Voelcker on 26/07/16.
//  Copyright © 2016 Mathias Voelcker. All rights reserved.
//

import UIKit
import GoogleMobileAds

class HandsTVC: UITableViewController, GADBannerViewDelegate {
    
//    let bannerView = GADBannerView(adSize: kGADAdSizeSmartBannerPortrait)

    let backgroundImage = Background()
    let handDetails = HandDetails()

//    @IBOutlet weak var adBannerView: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: backgroundImage.getImage())
        tableView.tableFooterView = UIView(frame: CGRectZero)
        self.tableView.layoutMargins.top = 10
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.textColor = UIColor.whiteColor()
        if(indexPath.row>=1 && indexPath.row<=9){
            handDetails.defineHand(indexPath.row)
            cell.textLabel!.text = handDetails.getHandRuleLabelText()
            cell.imageView?.image = handDetails.getHandImage()
        }
        else if(indexPath.row == 0){
            cell.imageView?.image = handDetails.getGoBackIcon()
        }
        return cell
    }

    override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        cell.backgroundColor = .clearColor()
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "showHand"){
            let showHandVC = segue.destinationViewController as! HandDetailsVC
            showHandVC.toPass = sender as! Int
        }
    }
    
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if(indexPath.row > 0){
            performSegueWithIdentifier("showHand", sender: indexPath.row)
        }
        else{
            performSegueWithIdentifier("backToHomeSegue", sender: nil)
        }
    }
    

}
