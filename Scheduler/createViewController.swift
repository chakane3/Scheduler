//
//  createViewController.swift
//  Scheduler
//
//  Created by Chakane Shegog on 11/12/21.
//

import UIKit

class createViewController: UIViewController {
    @IBOutlet weak var createEventTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var event: Event?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // here we are setting this VC as the delegate of the text field
        createEventTextField.delegate = self
        
        // initialize a default value for event
        event = Event(date: Date(), name: "Swift is the best programming language")
    }
    
    // update date of event
    @IBAction func datePickerChanged(sender: UIDatePicker) {
        event?.date = sender.date
    }
}

extension createViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
       // update name of event
        event?.name = textField.text ?? "no event name"
        
        return true
    }
}
