//
//  ViewController3.swift
//  MASH
//
//  Created by GABRIELA AVILA on 12/7/23.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var label1Outlet: UILabel!
    
    @IBOutlet weak var label2Outlet: UILabel!
    
    @IBOutlet weak var label3Outlet: UILabel!
    
    @IBOutlet weak var label4Outlet: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //drive
        AppData.answerQ1Array.append("Bike")
        AppData.answerQ1Array.append("Lambo")
        AppData.answerQ1Array.append("Train")
        AppData.answerQ1Array.append("Kia Sol")
        //live
        AppData.answerQ2Array.append("Mansion")
        AppData.answerQ2Array.append("Apartment")
        AppData.answerQ2Array.append("Shed")
        AppData.answerQ2Array.append("House")
        //pet
        AppData.answerQ3Array.append("Rat")
        AppData.answerQ3Array.append("Golden Retriever")
        AppData.answerQ3Array.append("Pitbull")
        AppData.answerQ3Array.append("Tarantula")
        //marry
        AppData.answerQ4Array.append("The Rock")
        AppData.answerQ4Array.append("Santa Claus/Mrs. Claus")
        AppData.answerQ4Array.append("The person sitting next to you")
        AppData.answerQ4Array.append("Josh")
        
        //printing
        var s = ""
    
        for blah in AppData.answerQ1Array
        {
            s = "\(s)\(blah)\n"
            label1Outlet.text = "\(s)"
        }
        var s2 = ""
        for blah in AppData.answerQ2Array
        {
            s2 = "\(s2)\(blah)\n"
            label2Outlet.text = "\(s2)"
        }
        var s3 = ""
        for blah in AppData.answerQ3Array
        {
            s3 = "\(s3)\(blah)\n"
            label3Outlet.text = "\(s3)"
        }
        var s4 = ""
        for blah in AppData.answerQ4Array
        {
            s4 = "\(s4)\(blah)\n"
            label4Outlet.text = "\(s4)"
        }
        
    }
    

    

}
