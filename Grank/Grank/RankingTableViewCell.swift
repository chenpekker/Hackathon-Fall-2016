//
//  RankingTableViewCell.swift
//  Grank
//
//  Created by Dominique Macias on 11/12/16.
//  Copyright © 2016 Dominique Macias. All rights reserved.
//

import UIKit

class RankingTableViewCell: UITableViewCell {

    @IBOutlet weak var Button1: UIButton!
    
    @IBOutlet weak var Button2: UIButton!
    
    @IBOutlet weak var Button3: UIButton!
    
    @IBOutlet weak var Button4: UIButton!
    
    @IBOutlet weak var Button5: UIButton!
    
    @IBOutlet weak var RankingOptionLabel: UILabel!
    
    @IBAction func Button1(_ sender: Any) {
        Button1.isEnabled = false
        Button1.setTitleColor(UIColor.green, for: UIControlState.normal)
        Button2.isEnabled = false
        Button3.isEnabled = false
        Button4.isEnabled = false
        Button5.isEnabled = false
        print (RankingOptionLabel.text!)
        let newVal = RankingDictionary[RankingOptionLabel!.text!]! + 1
        RankingDictionary[RankingOptionLabel!.text!] = newVal
    }
    
    
    @IBAction func Button2(_ sender: Any) {
        Button2.isEnabled = false
        Button2.setTitleColor(UIColor.green, for: UIControlState.normal)
        Button1.isEnabled = false
        Button3.isEnabled = false
        Button4.isEnabled = false
        Button5.isEnabled = false
        print (RankingOptionLabel.text!)
        let newVal = RankingDictionary[RankingOptionLabel!.text!]! + 2
        RankingDictionary[RankingOptionLabel!.text!] = newVal

    }
    
    
    @IBAction func Button3(_ sender: Any) {
        Button3.isEnabled = false
        Button3.setTitleColor(UIColor.green, for: UIControlState.normal)
        Button2.isEnabled = false
        Button1.isEnabled = false
        Button4.isEnabled = false
        Button5.isEnabled = false
        print (RankingOptionLabel.text!)
        let newVal = RankingDictionary[RankingOptionLabel!.text!]! + 3
        RankingDictionary[RankingOptionLabel!.text!] = newVal
    }
    
    
    @IBAction func Button4(_ sender: Any) {
        Button4.isEnabled = false
        Button4.setTitleColor(UIColor.green, for: UIControlState.normal)
        Button2.isEnabled = false
        Button3.isEnabled = false
        Button1.isEnabled = false
        Button5.isEnabled = false
        print (RankingOptionLabel.text!)
        let newVal = RankingDictionary[RankingOptionLabel!.text!]! + 4
        RankingDictionary[RankingOptionLabel!.text!] = newVal
    }
    
    @IBAction func Button5(_ sender: Any) {
        Button5.isEnabled = false
        Button5.setTitleColor(UIColor.green, for: UIControlState.normal)
        Button2.isEnabled = false
        Button3.isEnabled = false
        Button4.isEnabled = false
        Button1.isEnabled = false
        print (RankingOptionLabel.text!)
        let newVal = RankingDictionary[RankingOptionLabel!.text!]! + 5
        RankingDictionary[RankingOptionLabel!.text!] = newVal
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
