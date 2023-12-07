//
//  ViewController.swift
//  MASH
//
//  Created by GABRIELA AVILA on 12/5/23.
//

public class AppData {
     
    static var number = 0
    static var name = ""
    static var cday = ""
    static var smonth = ""
    static var sday = ""
    let defaults = UserDefaults.standard
    static var imgArray = [UIImage]()
    
   
    }

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelOutlet: UILabel!
    
    @IBOutlet weak var TFOutlet: UITextField!
    
    var num = 0
    
    override func viewDidLoad() {
        labelOutlet.text = "\(num)"
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func subAction(_ sender: UIButton) {
        if num > 0{
        num = num - 1
        labelOutlet.text = "\(num)"
        }else
        {
            let alert = UIAlertController(title: "Warning", message: "You can only go as low as 0!", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
           
           
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func addAction(_ sender: UIButton) {
        if num < 10
        {
        num = num + 1
        labelOutlet.text = "\(num)"
        }else
        {
            let alert = UIAlertController(title: "Warning", message: "You can only go as high as 10!", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
           
           
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)

        }
    }
    
    
    @IBAction func submitAction(_ sender: UIButton) {
        AppData.number = num
        AppData.name = TFOutlet.text ?? ""
        performSegue(withIdentifier: "toV2", sender: self)
    }
    
    
}

