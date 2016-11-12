//
//  OptionsInputViewController.swift
//  Grank
//
//  Created by Dominique Macias on 11/11/16.
//  Copyright © 2016 Dominique Macias. All rights reserved.
//

import UIKit

var OptionsArray: [String]? = []

class OptionsInputViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var OptionsTableView: UITableView!
    
    @IBOutlet weak var optionField: UITextField!

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        OptionsTableView.dataSource = self
        OptionsTableView.delegate = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func addOption(_ sender: Any) {
        if let optionFieldText = optionField.text {
            OptionsArray?.append(optionFieldText)
            self.OptionsTableView.reloadData()
            optionField.text = ""
            print (OptionsArray)
        } else {
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let optionsArray = OptionsArray {
            return optionsArray.count
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OptionsCell", for: indexPath) as! OptionsTableViewCell
        cell.optionsLabel.text = OptionsArray?[indexPath.row]
        return cell
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
