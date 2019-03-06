//
//  SecondViewController.swift
//  TableviewSystemTask
//
//  Created by kireeti on 06/03/19.
//  Copyright © 2019 KireetiSoft. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var str = ""
    var charArray = [String]()
    
    @IBOutlet var nameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        self.nameLbl.text = str
        for item in str {
            let strChar = String(item)
            
            charArray.append(strChar)
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return charArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell2")
        cell?.textLabel?.text = charArray[indexPath.row]
        return cell!
        
    }

    

}
