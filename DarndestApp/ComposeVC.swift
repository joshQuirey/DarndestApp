//
//  ComposeVC.swift
//  DarndestApp
//
//  Created by Joshua Quirey on 2/6/16.
//  Copyright © 2016 jQuirey. All rights reserved.
//

import UIKit

class ComposeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func cancelTapped(sender: AnyObject) {
        
        dismissVC()
    }
    
    
    @IBAction func saveTapped(sender: AnyObject) {
        //save to core data
        //if (nKid != nil) {
        //    editKid()
        //}
        //else {
        //    newKid()
        //}
    
        dismissVC()
        
    }
    
    func dismissVC() {
        
        navigationController?.popViewControllerAnimated(true)
    }

}
