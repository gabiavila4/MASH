//
//  ViewController2.swift
//  MASH
//
//  Created by GABRIELA AVILA on 12/7/23.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var labelOutlet: UILabel!
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelOutlet.text = "\(AppData.name) you chose \(AppData.number)!"
        AppData.quesArray.append("You will drive a...")
        AppData.quesArray.append("You will live in a...")
        AppData.quesArray.append("You will have a pet...")
        AppData.quesArray.append("You will marry...")
        
        switch AppData.number
        {
        case 1:
        imageOutlet.image = UIImage(named: "swirlNum1")
        case 2:
        imageOutlet.image = UIImage(named: "swirlNum4 1")
            print("hey")
        case 3:
        imageOutlet.image = UIImage(named: "swirlNum 4 1")
            print("hey")
        case 4:
        imageOutlet.image = UIImage(named: "swirlNum4 1")
            print("hey")
        case 5:
        imageOutlet.image = UIImage(named: "swirlNum4 1")
            print("hey")
        case 6:
        imageOutlet.image = UIImage(named: "Swirl 6")
        case 7:
        imageOutlet.image = UIImage(named: "Swirl 7")
        case 8:
        imageOutlet.image = UIImage(named: "swirlNum4 1")
            print("hey")
        case 9:
        imageOutlet.image = UIImage(named: "swirlNum4 1")
            print("hey")
        case 10:
        imageOutlet.image = UIImage(named: "Swirl 10")
           
    
        
        default:
            print("hi")
        }
      
            
       
    }
    
    @IBAction func playAction(_ sender: UIButton) {
        performSegue(withIdentifier: "toPlay", sender: self)
    }
    
    
    @IBAction func createAction(_ sender: UIButton) {
        performSegue(withIdentifier: "toCreate", sender: self)
    }
    
}
