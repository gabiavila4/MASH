//
//  ViewController2.swift
//  MASH
//
//  Created by GABRIELA AVILA on 12/7/23.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var labelOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelOutlet.text = "\(AppData.name) you chose \(AppData.number)!"
        AppData.quesArray.append("You will drive a...")
        AppData.quesArray.append("You will live in a...")
        AppData.quesArray.append("You will have a...")
        AppData.quesArray.append("You will marry...")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func playAction(_ sender: UIButton) {
        performSegue(withIdentifier: "toPlay", sender: self)
    }
    
    
    @IBAction func createAction(_ sender: UIButton) {
        performSegue(withIdentifier: "toCreate", sender: self)
    }
    
}
