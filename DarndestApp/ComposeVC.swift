//
//  ComposeVC.swift
//  DarndestApp
//
//  Created by Joshua Quirey on 2/6/16.
//  Copyright © 2016 jQuirey. All rights reserved.
//

import UIKit

class ComposeVC: UIViewController, UITextViewDelegate {

    var note : String = ""
    @IBOutlet var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        createTextView()
        //var textStorage: SyntaxHighlightTextStorage!
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
    
    func createTextView() {
        // 1. Create the text storage that backs the editor
        let attrs = [NSFontAttributeName : UIFont.preferredFontForTextStyle(UIFontTextStyleBody)]
        _ = NSAttributedString(string: note, attributes: attrs)
        //xtStorage = SyntaxHighlightTextStorage()
        //textStorage.appendAttributedString(attrString)
        
        let newTextViewRect = view.bounds
        
        // 2. Create the layout manager
        let layoutManager = NSLayoutManager()
        
        // 3. Create a text container
        let containerSize = CGSize(width: newTextViewRect.width, height: CGFloat.max)
        let container = NSTextContainer(size: containerSize)
        container.widthTracksTextView = true
        layoutManager.addTextContainer(container)
        //textStorage.addLayoutManager(layoutManager)
        
        // 4. Create a UITextView
        textView = UITextView(frame: newTextViewRect, textContainer: container)
        textView.delegate = self
        view.addSubview(textView)
    }

    
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
