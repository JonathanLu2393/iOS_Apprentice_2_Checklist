//
//  AddItemViewController.swift
//  Checklists
//
//  Created by Jonathan Lu on 10/13/15.
//  Copyright © 2015 Jonathan Lu. All rights reserved.
//

import Foundation
import UIKit
class AddItemViewController: UITableViewController, UITextFieldDelegate {

    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    @IBOutlet weak var textField: UITextField!

    @IBAction func cancel() {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func done() {
        print("Contents of the text field: \(textField.text!)")
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        return nil
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        textField.becomeFirstResponder()
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        let oldText: NSString = textField.text!
        let newText: NSString = oldText.stringByReplacingCharactersInRange(range, withString: string)
         
        if newText.length > 0 {
            doneBarButton.enabled = true
        } else {
            doneBarButton.enabled = false
        }
        return true
    }
}