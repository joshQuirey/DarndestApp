//
//  KidsTableVC.swift
//  DarndestApp
//
//  Created by Joshua Quirey on 8/6/15.
//  Copyright (c) 2015 jQuirey. All rights reserved.
//

import UIKit
import CoreData

class KidsTableVC: UITableViewController, NSFetchedResultsControllerDelegate {

    let context : NSManagedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext!
    var fetchedResultsC : NSFetchedResultsController = NSFetchedResultsController()
    
    func getFetchedResultsController() -> NSFetchedResultsController {
        fetchedResultsC = NSFetchedResultsController(fetchRequest: kidFetchRequest(), managedObjectContext: context, sectionNameKeyPath: nil, cacheName: nil)
        return fetchedResultsC
    }
    
    func kidFetchRequest() -> NSFetchRequest {
        let fetchRequest = NSFetchRequest(entityName: "Kid")
        let sortDescriptor = NSSortDescriptor(key: "name", ascending: true)
        fetchRequest.sortDescriptors = [sortDescriptor]
        
        return fetchRequest
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchedResultsC = getFetchedResultsController()
        fetchedResultsC.delegate = self
        do {
            try fetchedResultsC.performFetch()
        } catch _ {
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func controllerDidChangeContent(controller: NSFetchedResultsController) {
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        let nbrSections = fetchedResultsC.sections?.count
        return nbrSections!
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        let nbrRows = fetchedResultsC.sections?[section].numberOfObjects
        return nbrRows!
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> CustomCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CustomCell", forIndexPath: indexPath) as! CustomCell
        let calendar : NSCalendar = NSCalendar.currentCalendar()
        
        if let kid = fetchedResultsC.objectAtIndexPath(indexPath) as? Kid {
            // Configure the cell...
            cell.name?.text = kid.name
            //var test = fetchedResultsC.sections?[indexPath.row]
            let ageComponents = calendar.components(.Year,
                fromDate: kid.birthday!,
                toDate: NSDate(),
                options: [])
            let age = ageComponents.year
            
            cell.birthday?.text = "\(age)" ////"\(age) year(s) old"
            cell.profilePicture?.image = UIImage(data: kid.picture)
            //cell.profilePicture.layer.cornerRadius = 38
            cell.profilePicture.clipsToBounds = true
        }
        
        //let shadowPath = UIBezierPath(rect: cell.buttonView.bounds)
        
        cell.buttonView.layer.masksToBounds = false
        cell.buttonView.layer.shadowColor = UIColor.blackColor().CGColor
        cell.buttonView.layer.shadowOffset = CGSizeMake(0, 0.5)
        cell.buttonView.layer.shadowOpacity = 0.2
        //cell.buttonView.layer.shadowPath = shadowPath.CGPath
        
        return cell
    }


    
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }

    override func tableView(tableView:UITableView, heightForRowAtIndexPath indexPath:NSIndexPath)->CGFloat
    {
        return 95
    }
    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        let managedObject : NSManagedObject = fetchedResultsC.objectAtIndexPath(indexPath) as! Kid
        context.deleteObject(managedObject)
        do {
            try context.save()
        } catch _ {
        }
        
        
        //if editingStyle == .Delete {
            // Delete the row from the data source
        //    tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        //} else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        //}
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.

        
        if segue.identifier == "Edit" {
            let cell = sender as! CustomCell
            let indexPath = tableView.indexPathForCell(cell)
            let vc2: MainVC = segue.destinationViewController as! MainVC
            let selectedItem: Kid = fetchedResultsC.objectAtIndexPath(indexPath!) as! Kid
            vc2.nKid = selectedItem
        }
        
        
        
        //    let cell = sender as! CustomCell
        //    let indexPath = tableView.indexPathForCell(cell)
        //    let itemController : AddEditKidVC = segue.destinationViewController as! AddEditKidVC
        //    let nKid : Kid = fetchedResultsC.objectAtIndexPath(indexPath!) as! Kid
        //    itemController.nKid = nKid
        //}
        
        
    }

    


}
