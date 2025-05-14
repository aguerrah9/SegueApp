//
//  ViewController.swift
//  SegueApp
//
//  Created by Alejandro Guerra Hernandez on 08/05/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Lifecycle
        print("view did load")
        nameText.text = "" // do it once time, seems nothing
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("view did appear")
        nameText.text = "" // do it several times
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("view will appear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("view did disappear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("view will disappear")
    }

    @IBAction func nextClicked(_ sender: Any) {
        
        let name = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: name)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "toSecondVC":
            let destination = segue.destination as! SecondViewController
            destination.myName = sender as! String
        default:
            break
        }
    }
}

