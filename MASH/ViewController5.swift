//
//  ViewController5.swift
//  MASH
//
//  Created by GABRIELA AVILA on 12/12/23.
//

import UIKit

class ViewController5: UIViewController {

    var i1 = 0
    var i2 = 0
    var i3 = 0
    var i4 = 0
    var s = ""
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        while i1 < 16
        {
    if i1 < 4
    {
        AppData.answerQ1Array.append(AppData.answerArray[i1])
        print("yay")
    }else if i1 < 8{
        AppData.answerQ2Array.append(AppData.answerArray[i1])
        print("yay2")
    }else if i1 < 12{
        AppData.answerQ3Array.append(AppData.answerArray[i1])
        print("yay3")
    }else{
        AppData.answerQ4Array.append(AppData.answerArray[i1])
        print("yay4")
    }
            i1 = i1 + 1
        }
        
        
        //putting in label
        s = "\(s) \n\(AppData.quesArray[0])"
        labelOutlet.text = "\(s)"
        for blah in AppData.answerQ1Array
        {
    
            s = "\(s) \n\(blah)"
            labelOutlet.text = "\(s)"
        }
       
        s = "\(s) \n\(AppData.quesArray[1])"
        labelOutlet.text = "\(s)"
        
        for blah in AppData.answerQ2Array
        {
           
            s = "\(s) \n\(blah)"
            labelOutlet.text = "\(s)"
        }
        
        
        s = "\(s) \n\(AppData.quesArray[2])"
        labelOutlet.text = "\(s)"
        for blah in AppData.answerQ3Array
        {
           
            s = "\(s) \n\(blah)"
            labelOutlet.text = "\(s)"
        }
        s = "\(s) \n\(AppData.quesArray[3])"
        labelOutlet.text = "\(s)"
        for blah in AppData.answerQ4Array
        {
           
            s = "\(s) \n\(blah)"
            labelOutlet.text = "\(s)"
        }
        
        
    }
    

    @IBAction func endAction(_ sender: UIBarButtonItem) {
       
    }
    
    @IBAction func enddAction(_ sender: UIButton) {
        performSegue(withIdentifier: "toEndd", sender: self)
    }
    
}
