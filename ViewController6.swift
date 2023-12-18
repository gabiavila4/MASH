//
//  ViewController6.swift
//  MASH
//
//  Created by Orlando Avila on 12/16/23.
//

import UIKit

class ViewController6: UIViewController {
    
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    @IBOutlet weak var label2Outlet: UILabel!
    
    @IBOutlet weak var label3Outlet: UILabel!
    
    @IBOutlet weak var label4Outlet: UILabel!
    var i = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        func choose(num: Int, arrayy: [String])-> Int
        {
            
            if arrayy.count == 1
            {
                return 100
            }
            else if arrayy.count != 1
            {
                if num <= arrayy.count {
                    return num - 1
                }else if num <= arrayy.count * 2
                {
                    return num - arrayy.count - 1
                }else if num <= arrayy.count * 3
                {
                    return num - arrayy.count - arrayy.count - 1
                }else if num <= arrayy.count * 4
                {
                    return num - arrayy.count - arrayy.count - arrayy.count - 1
                }else if num <= arrayy.count * 5
                {
                    return num - arrayy.count - arrayy.count - arrayy.count - arrayy.count - 1
                }

                }
            return 0

        }
        func choose2(num: Int, arrayy: [String], arrayy2: [String], arrayy3: [String], arrayy4: [String])-> Int
        {
            if arrayy.count > 1 || arrayy2.count > 1 || arrayy3.count > 1 || arrayy4.count > 1
            {
                if num <= arrayy.count && arrayy.count > 1{
                    if num <= arrayy.count + arrayy2.count && arrayy2.count > 1{
                        if num <= 12 && arrayy.count > num
                        {
                            
                        }else{
                            return num - 9
                        }
                    }else{
                        return num
                    }
                }else {
                    return num - 1
                }
                
            }else
            {
                return 100
            }
            
            
            return 0
        }
        
        
        
        while choose(num: AppData.number, arrayy: AppData.answerQ1Array) != 100
            {
           // i = choose(num: AppData.number, arrayy: AppData.answerQ1Array, index: i) + 1
                //print(choose(num: AppData.number, arrayy: AppData.answerQ1Array))
            AppData.answerQ1Array.remove(at: choose(num: AppData.number, arrayy: AppData.answerQ1Array))
            }
            labelOutlet.text = "\(AppData.quesArray[0])\(AppData.answerQ1Array[0])"
            while choose(num: AppData.number, arrayy: AppData.answerQ2Array) != 100
            {
                AppData.answerQ2Array.remove(at: choose(num: AppData.number, arrayy: AppData.answerQ2Array))
            }
            label2Outlet.text = "\(AppData.quesArray[1])\(AppData.answerQ2Array[0])"
            while choose(num: AppData.number, arrayy: AppData.answerQ3Array) != 100
            {
                AppData.answerQ3Array.remove(at: choose(num: AppData.number, arrayy: AppData.answerQ3Array))
            }
            label3Outlet.text = "\(AppData.quesArray[2])\(AppData.answerQ3Array[0])"
            while choose(num: AppData.number, arrayy: AppData.answerQ4Array) != 100
            {
                AppData.answerQ4Array.remove(at: choose(num: AppData.number, arrayy: AppData.answerQ4Array))
            }
            label4Outlet.text = "\(AppData.quesArray[3])\(AppData.answerQ4Array[0])"
        }
        
        
        
    }
    

