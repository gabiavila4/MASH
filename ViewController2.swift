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
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
