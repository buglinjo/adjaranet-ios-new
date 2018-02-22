//
//  ViewController.swift
//  adjaranet-ios
//
//  Created by Irakli Tchitadze on 2/21/18.
//  Copyright © 2018 Buglinjo. All rights reserved.
//

import UIKit

class IndexViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let logo = UIImageView(image: UIImage(named: "adjaranet"))
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logo.contentMode = .scaleAspectFit
        navigationItem.titleView = logo
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.separatorStyle = .none
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SectionCellId", for: indexPath) as! SectionCell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return (9 * view.frame.width) / 16
    }
}

