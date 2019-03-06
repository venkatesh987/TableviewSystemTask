//
//  ViewController.swift
//  TableviewSystemTask
//
//  Created by kireeti on 06/03/19.
//  Copyright © 2019 KireetiSoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var nameArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameArray = ["github","sourcetree","Bitbucket","versioncontrol","xcode","ios","android"]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = nameArray[indexPath.row]
        return cell!
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let VC = navigationController?.storyboard?.instantiateViewController(withIdentifier: "second") as! SecondViewController
        VC.str = nameArray[indexPath.row]
        self.navigationController?.pushViewController(VC, animated: true)
        
    }


}

