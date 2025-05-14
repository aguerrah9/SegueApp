//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Alejandro Guerra Hernandez on 08/05/25.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = myName
    }
    
}
