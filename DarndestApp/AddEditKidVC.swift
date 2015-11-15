//
//  ViewController.swift
//  DarndestApp
//
//  Created by Joshua Quirey on 8/6/15.
//  Copyright (c) 2015 jQuirey. All rights reserved.
//

import UIKit
import CoreData

class AddEditKidVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    
    var nKid : Kid? = nil
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var birthday: UITextField!
    @IBOutlet weak var profilePicture: UIImageView!
    
    let picker = UIImagePickerController()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.delegate = self
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        if nKid != nil {
            name.text = nKid?.name
            birthday.text = dateFormatter.stringFromDate(nKid!.birthday!)
            //ADD IMAGE
            profilePicture.image = UIImage(data: nKid!.picture)
        }
        
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "DismissKeyboard")
        view.addGestureRecognizer(tap)
        
        name.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func DismissKeyboard() {
        self.view.endEditing(true)
    }

    @IBAction func cancelTapped(sender: AnyObject) {
        
        dismissVC()
    }
    
    
    @IBAction func saveTapped(sender: AnyObject) {
        //save to core data
        if (nKid != nil) {
            editKid()
        }
        else {
            newKid()
        }
        
        dismissVC()
        
    }
    
    func dismissVC() {
        
        navigationController?.popToRootViewControllerAnimated(true)
    }
    
    func newKid() {
        let context = self.context
        let ent = NSEntityDescription.entityForName("Kid", inManagedObjectContext: context!)
        let nKid = Kid(entity: ent!, insertIntoManagedObjectContext: context)
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        nKid.name = name.text!.capitalizedString
        nKid.birthday = dateFormatter.dateFromString(birthday.text!)!
        nKid.picture = UIImageJPEGRepresentation(profilePicture.image!, 0.0)!
        do {
            try context?.save()
        } catch _ {
        }
        
        
    }
    
    func editKid() {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        nKid!.name = name.text!
        nKid!.birthday = dateFormatter.dateFromString(birthday.text!)!
        nKid!.picture = UIImageJPEGRepresentation(profilePicture.image!, 0.0)!
        do {
            try context?.save()
        } catch _ {
        }
    }
    
    
    @IBAction func birthdayFieldEditing(sender: UITextField) {
        let datePickerView:UIDatePicker = UIDatePicker()
        datePickerView.datePickerMode = UIDatePickerMode.Date
        sender.inputView = datePickerView
        datePickerView.addTarget(self, action: Selector("datePickerValueChanged:"), forControlEvents: UIControlEvents.ValueChanged)
    }
    
    @IBAction func birthdayFieldEditingDidBegin(sender: UITextField) {
        let datePickerView:UIDatePicker = UIDatePicker()
        datePickerView.datePickerMode = UIDatePickerMode.Date
        
        sender.inputView = datePickerView
        datePickerView.addTarget(self, action: Selector("datePickerValueChanged:"), forControlEvents: UIControlEvents.ValueChanged)
    }
    
    
    func datePickerValueChanged(sender: UIDatePicker) {
        let dateformatter = NSDateFormatter()
        dateformatter.dateFormat = "yyyy-MM-dd"
        //dateformatter.dateStyle = NSDateFormatterStyle.MediumStyle
        birthday.text = dateformatter.stringFromDate(sender.date)
    }
    
    
    @IBAction func takeNewPhoto(sender: UIButton) {
        if (UIImagePickerController.availableCaptureModesForCameraDevice(.Rear) != nil) {
            picker.allowsEditing = false
            picker.sourceType = UIImagePickerControllerSourceType.Camera
            picker.cameraCaptureMode = .Photo
            presentViewController(picker, animated: true, completion: nil)
        }
        else {
            noCamera()
        }
    }
    
    func noCamera() {
        let alertVC = UIAlertController(title: "No Camera", message: "This device has no camera", preferredStyle: .Alert)
        let okAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alertVC.addAction(okAction)
        presentViewController(alertVC, animated: true, completion: nil)
    }
    
    @IBAction func choosePhotoFromLibrary(sender: UIButton) {
        picker.editing = false
        picker.sourceType = .PhotoLibrary
        //picker.modalPresentationStyle = .Popover
        presentViewController(picker, animated: true, completion: nil)//4
        //picker.popoverPresentationController?.UIButton! = sender
    }
    
    //MARK Image Picker Delegate
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        let chosenImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        //profilePicture.contentMode = .ScaleAspectFit
        profilePicture.image = chosenImage
        //profilePicture.frame.size.height = 275
        //profilePicture.layer.cornerRadius = 75//profilePicture.frame.size.width
        profilePicture.clipsToBounds = true
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}

