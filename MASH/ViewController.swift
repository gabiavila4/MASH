//
//  ViewController.swift
//  MASH
//
//  Created by GABRIELA AVILA on 12/5/23.
//programming: Variables & constants, operators, if/else, while loops/for loops, arrays, functions, classes, github, safely unwrapping, switch
//UI Elements: Textfield, Button, Label, Stackview, Imageview, Navigation Controller, View Controller, Alert Controller, Constraints


public class AppData {
     
    static var number = 0
    static var name = ""
    let defaults = UserDefaults.standard
    static var answerArray = [String]()
    static var quesArray = [String]()
    static var answerQ1Array = [String]()
    static var answerQ2Array = [String]()
    static var answerQ3Array = [String]()
    static var answerQ4Array = [String]()
    }

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelOutlet: UILabel!
    
    @IBOutlet weak var TFOutlet: UITextField!
    
    var num = 1
    
    override func viewDidLoad() {
        labelOutlet.text = "\(num)"
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func subAction(_ sender: UIButton) {
        if num > 1{
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
    
    //woa
}

