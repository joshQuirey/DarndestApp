//
//  MainVCViewController.swift
//  DarndestApp
//
//  Created by Joshua Quirey on 8/30/15.
//  Copyright (c) 2015 jQuirey. All rights reserved.
//

import UIKit
import CoreData

class MainVC: UIViewController, UINavigationControllerDelegate {

    let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    
    var nKid : Kid? = nil

    @IBOutlet weak var profilePicture: UIImageView!
    @NSManaged var item : NSManagedObject
    @IBOutlet weak var bottomToolbar: UIToolbar!
    
    
    //let context : NSManagedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext!
//    var fetchedResultsC : NSFetchedResultsController = NSFetchedResultsController()
//    
//    func getFetchedResultsController() -> NSFetchedResultsController {
//        fetchedResultsC = NSFetchedResultsController(fetchRequest: kidFetchRequest(), managedObjectContext: context, sectionNameKeyPath: nil, cacheName: nil)
//        return fetchedResultsC
//    }
    
//    func kidFetchRequest() -> NSFetchRequest {
//        let fetchRequest = NSFetchRequest(entityName: "Kid")
//        let sortDescriptor = NSSortDescriptor(key: "name", ascending: true)
//        fetchRequest.sortDescriptors = [sortDescriptor]
//        
//        return fetchRequest
//        
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if nKid != nil {
            self.title = nKid?.name
            profilePicture.image = UIImage(data: nKid!.picture)
        }
        
        bottomToolbar.barTintColor = UIColor(red: 125.0/255.0, green: 170.0/255.0, blue: 222.0/255.0, alpha: 100.0)
        
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

}
