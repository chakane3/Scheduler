//
//  ViewController.swift
//  Scheduler
//
//  Created by Chakane Shegog on 11/12/21.
//

import UIKit

class ScheduleListController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var events = [Event]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    // as we implement this we need to go to storyboard
    // find the button that will be used to update our tableview
    // control drag to the exit icon located on top of the view controler on the storyboard
    @IBAction func addNewEvent(segue: UIStoryboardSegue) {
        // get a reference to the CreateEventcontroller  (source is where we are coming from)
        guard let createEventController = segue.source as? createViewController, let createdEvent = createEventController.event else {
            fatalError("Failed to get access to createViewController")
        }
        events.insert(createdEvent, at: 0) // implies the top of events array
        
        // create an indexPath for the new event
        let indexPath = IndexPath(row: 0, section: 0)
        
        tableView.insertRows(at: [indexPath], with: .automatic)
    }
}

extension ScheduleListController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "eventCell", for: indexPath)
        let event = events[indexPath.row]
        cell.textLabel?.text = event.name
        cell.detailTextLabel?.text = event.date.description
        return cell

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    
    // deleting rows in a table view
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        switch editingStyle {
        case .insert:
            print("inserting")
            
        case .delete:
            print("deleting")
            events.remove(at: indexPath.row) // remove event from events array
            tableView.deleteRows(at: [indexPath], with: .automatic)
            
        default:
            print(". . .")
        }
    }
}




