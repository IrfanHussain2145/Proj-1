//
//  Sub View.swift
//  Proj-1
//
//  Created by Irfan Hussain on 1/25/23.
//

import UIKit

class Sub_View: UIViewController {
    
    var batman: Batman?
    
    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var Image: UIImageView!
    
    @IBOutlet weak var Text: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
        
        
        if let batman = batman {
            Label.text = batman.label
            Image.image = batman.picture
            Text.text = batman.info
            
        }
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
