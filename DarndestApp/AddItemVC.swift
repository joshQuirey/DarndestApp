//
//  AddItemVC.swift
//  DarndestApp
//
//  Created by Joshua Quirey on 11/15/15.
//  Copyright © 2015 jQuirey. All rights reserved.
//

import UIKit

class AddItemVC: UIViewController {
    
    
    @IBOutlet weak var addChat: UIButton!
    @IBOutlet weak var addCompose: UIButton!
    
    //@IBOutlet weak var journalContainer: UIView!
    //@IBOutlet weak var journalText: UITextView!
    //@IBOutlet weak var journalPhoto: UIButton!
    //@IBOutlet weak var journalFavorite: UIButton!
    //@IBOutlet weak var journalLocation: UIButton!
    //@/IBOutlet weak var journalDate: UIButton!
    //@IBOutlet weak var addJournalLabel: UILabel!
    //@IBOutlet weak var addConversationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        //blurEffectView.alpha = 0.6
        blurEffectView.frame = view.bounds
        view.addSubview(blurEffectView)
        
        //add button attributes
        let cornerRadius : CGFloat = 5.0
        addChat.layer.borderWidth = 1
        addChat.layer.borderColor = UIColor(white:1.0, alpha: 1.0).CGColor
        addChat.layer.cornerRadius = cornerRadius
        addCompose.layer.borderWidth = 1
        addCompose.layer.borderColor = UIColor(white: 1.0, alpha: 1.0).CGColor
        addCompose.layer.cornerRadius = cornerRadius
        
        //initial setup
        //journalContainer.hidden = true
        //journalText.hidden = true
        //journalPhoto.hidden = true
        //journalFavorite.hidden = true
        //journalLocation.hidden = true
        //journalDate.hidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //@IBAction func addJournal(sender: AnyObject) {
        //journalContainer.hidden = false
        //journalText.hidden = false
        //journalPhoto.hidden = false
        //journalFavorite.hidden = false
        //journalLocation.hidden = false
        //journalDate.hidden = false
    //}
    
    //@IBAction func addConversation(sender: AnyObject) {
        //journalContainer.hidden = true
        //journalText.hidden = true
        //journalPhoto.hidden = true
        //journalFavorite.hidden = true
        //journalLocation.hidden = true
        //journalDate.hidden = true
    //}
    
    
    func dismissVC() {
        self.dismissViewControllerAnimated(true, completion: nil)
        //navigationController?.popToRootViewControllerAnimated(true)
    }
    
    @IBAction func cancel(sender: AnyObject) {
        
        dismissVC();
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
