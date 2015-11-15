//
//  AddItemVC.swift
//  DarndestApp
//
//  Created by Joshua Quirey on 11/15/15.
//  Copyright © 2015 jQuirey. All rights reserved.
//

import UIKit

class AddItemVC: UIViewController {
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        view.addSubview(blurEffectView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
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
