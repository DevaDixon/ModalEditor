//
//  EditorViewController.swift
//  ModalEditor
//
//  Created by csit267-13 on 10/26/15.
//  Copyright © 2015 Deva Dixon. All rights reserved.
//

import UIKit

class EditorViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    
    @IBAction func updateEditor(sender: AnyObject) {
        
        (presentingViewController as! ViewController).emailLabel.text = emailField.text 
    }
    
   
    @IBAction func hideKeyboard(sender: AnyObject) {
        emailField.resignFirstResponder()
    }
    
    override func viewWillAppear(animated: Bool) {
        emailField.text = (presentingViewController as! ViewController).emailLabel.text
        
        super.viewWillAppear(animated)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        preferredContentSize = CGSizeMake(340,160)
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
