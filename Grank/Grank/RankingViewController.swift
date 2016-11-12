//
//  RankingViewController.swift
//  Grank
//
//  Created by Dominique Macias on 11/12/16.
//  Copyright © 2016 Dominique Macias. All rights reserved.
//

import UIKit

var Counter: Int = 1

class RankingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var RankingTableView: UITableView!
    
    @IBOutlet weak var voterLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        RankingTableView.dataSource = self
        RankingTableView.delegate = self
        
        voterLabel.text = "Voter \(String(Counter))"
        
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let optionsArray = OptionsArray {
            return optionsArray.count
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RankingCell", for: indexPath) as! RankingTableViewCell
        cell.RankingOptionLabel.text = OptionsArray?[indexPath.row]
        return cell
    }

    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
