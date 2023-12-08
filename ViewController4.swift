//
//  ViewController4.swift
//  MASH
//
//  Created by GABRIELA AVILA on 12/7/23.
//

import UIKit

class ViewController4: UIViewController {

    @IBOutlet weak var labelOutlet: UILabel!
    
    @IBOutlet weak var TFOutlet1: UITextField!
    
    @IBOutlet weak var TFOutlet2: UITextField!
    
    @IBOutlet weak var TFOutlet3: UITextField!
    
    @IBOutlet weak var TFOutlet4: UITextField!
    
    var i = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelOutlet.text = AppData.quesArray[i]
       
    }
    
    @IBAction func submitArray(_ sender: UIButton) {
        i = i + 1
        labelOutlet.text = AppData.quesArray[i]
        TFOutlet1.text = ""
        TFOutlet2.text = ""
        TFOutlet3.text = ""
        TFOutlet4.text = ""
        
    }
    

}
