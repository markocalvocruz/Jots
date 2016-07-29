//
//  JotDetailViewController.swift
//  Fringe
//
//  Created by Marko Calvo-Cruz on 7/29/16.
//  Copyright © 2016 Classy. All rights reserved.
//

import UIKit

class JotDetailViewController: UIViewController {

    var jot: Jot!

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentTextField: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        if jot.title == "" {
            titleTextField.text = "Give me a Name!"
        } else {
            titleTextField.text = jot.title
        }
        if jot.content == "" {
            contentTextField.text = "Write here"
        } else {
            contentTextField.text = jot.content
        }
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        jot.title = titleTextField.text!
        jot.content = contentTextField.text
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
