//
//  ResultsViewController.swift
//  Grank
//
//  Created by Dominique Macias on 11/12/16.
//  Copyright © 2016 Dominique Macias. All rights reserved.
//

import UIKit

//var SortedTuples: [String: Int] = [:]
var answerArr: [String] = []

class ResultsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var winnerLabel: UILabel!
    
    
    @IBOutlet weak var sortedTableView: UITableView!
    
    
    
    let SortedTuples = RankingDictionary.sorted { $0.value > $1.value }
    
    
    //let SortedArray = [String!] (SortedDictionary.keys)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answerArr = []
        
        winnerLabel.text = "...and the winner is \(SortedTuples[0].0)! 🎉"
        
        sortedTableView.dataSource = self
        sortedTableView.delegate = self
        
        sortedTableView.allowsSelection = false

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let optionsArray = OptionsArray {
            return optionsArray.count
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        var answerArr: [String]
        for (x,y) in SortedTuples{
             answerArr.append(x)
            
        }
        
//        var SortedArray = Array(RankingDictionary.keys)
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultCell", for: indexPath) as! ResultsCell
        cell.ResultsLabel.text = answerArr[indexPath.row]
        return cell
    }

    
    @IBAction func grankAgain(_ sender: Any) {
        self.performSegue(withIdentifier: "grankAgain", sender: sender)
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
