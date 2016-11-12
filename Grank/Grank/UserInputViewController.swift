//
//  UserInputViewController.swift
//  Grank
//
//  Created by Dominique Macias on 11/11/16.
//  Copyright © 2016 Dominique Macias. All rights reserved.
//

import UIKit

var numVoters: Int?

class UserInputViewController: UIViewController {
    
    
    
    @IBOutlet weak var numVotersField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func toOptionsInput(_ sender: Any) {
        numVoters = Int(numVotersField.text!)
        performSegue(withIdentifier: "User_OptionsSegue", sender: sender)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
