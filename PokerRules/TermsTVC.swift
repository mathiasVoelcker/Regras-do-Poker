//
//  TableViewController.swift
//  PokerRules
//
//  Created by Mathias Voelcker on 21/08/16.
//  Copyright © 2016 Mathias Voelcker. All rights reserved.
//

import UIKit

class TermsTVC: UITableViewController {

    let handDetails = HandDetails()
    let backgroundImage = Background()
    let termsExplanation = TermsExplanation()
    let headerColor = UIColor(
        red: 246/255,
        green: 242/255,
        blue: 242/255,
        alpha: 0.8
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: backgroundImage.getImage())
        tableView.tableFooterView = UIView(frame: CGRectZero)
        self.tableView.layoutMargins.top = 20
        self.tableView.rowHeight = 75

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 17
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.layoutMargins.left = 0
        termsExplanation.defineTerm(indexPath.row)
        if(indexPath.row > 0){
            cell.textLabel!.text = termsExplanation.getTermText()
        }
        if(indexPath.row == 1 || indexPath.row == 6 || indexPath.row == 10){//head of each subject
            cell.backgroundColor = headerColor
            cell.textLabel?.font = UIFont.boldSystemFontOfSize(18.0)
        }
        else if(indexPath.row == 0){ //go back button
            cell.imageView?.image = handDetails.getGoBackIcon()
            cell.backgroundColor = .clearColor()
        }
        else{
            cell.backgroundColor = .clearColor()
            cell.textLabel?.textColor = UIColor.whiteColor()
        }
        return cell
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if(indexPath.row > 1 && indexPath.row != 6 && indexPath.row != 10){
            performSegueWithIdentifier("termExplanationSegue", sender: indexPath.row)
        }
        else if(indexPath.row == 0){
            performSegueWithIdentifier("backToHomeSegue1", sender: nil)
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "termExplanationSegue"){
            let termExplanationVC = segue.destinationViewController as! TermExplanationVC
            termExplanationVC.toPass = sender as! Int
        }
    }

}
