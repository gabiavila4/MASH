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
        if i < AppData.quesArray.count - 1
        {
            i = i + 1
            print("\(i)")
            labelOutlet.text = AppData.quesArray[i]
        }else
        {
            let alert = UIAlertController(title: "Generate!", message: "You have submitted all the answers", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            alert.addAction(okAction)
            
           
            present(alert, animated: true, completion: nil)
        }
        AppData.answerArray.append(TFOutlet1.text ?? "")
        AppData.answerArray.append(TFOutlet2.text ?? "")
        AppData.answerArray.append(TFOutlet3.text ?? "")
        AppData.answerArray.append(TFOutlet4.text ?? "")
        TFOutlet1.text = ""
        TFOutlet2.text = ""
        TFOutlet3.text = ""
        TFOutlet4.text = ""
        
    }
    
    @IBAction func generateAction(_ sender: UIButton) {
        
        if AppData.answerArray.count < 16{
            
                let alert = UIAlertController(title: "Error", message: "You haven't submitted all the answers! ", preferredStyle: .alert)
                
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                
                alert.addAction(okAction)
                
               
                present(alert, animated: true, completion: nil)
            
            
        }else{
        performSegue(withIdentifier: "toFinal", sender: self)
            
        }
        
        
    }
    

}
