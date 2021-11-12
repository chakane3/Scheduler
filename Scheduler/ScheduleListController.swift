//
//  ViewController.swift
//  Scheduler
//
//  Created by Chakane Shegog on 11/12/21.
//

import UIKit

class ScheduleListController: UIViewController {
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.dataSource = self
    }
    
    // as we implement this we need to go to storyboard
    // find the button that will be used to update our tableview
    // control drag to the exit icon located on top of the view controler on the storyboard
    @IBAction func addNewEvent(segue: UIStoryboardSegue) {
        print("\(segue.hash)")
    }
}

//extension ScheduleListController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//    }
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//    }
//}




