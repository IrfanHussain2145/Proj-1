//
//  ViewController.swift
//  Proj-1
//
//  Created by Irfan Hussain on 1/25/23.
//

import UIKit

class ViewController: UIViewController {
    
    var n = 0;
    
    let backstory = Batman(label: "Backstory", picture: UIImage(named: "BatmanLogo.jpeg")!, info: "Batman's parents were killed in front of him when he was just a kid. As a result, he decided to protect others from sharing his fate. At night, he protects his city by taking down criminals.")
    
    let weakness = Batman(label: "Weakness", picture: UIImage(named: "bat.jpeg")!, info: "Batman has no weaknesses but he also does not have powers. However, when he was younger, he was scared of bats. This is why he chose the name Batman. To confront his fears.")
    
    let strength = Batman(label: "Strength", picture: UIImage(named: "BatmanStrong.jpeg")!, info: "Batman is much stronger than the average person. The exact metrics of his strength are unknown but he is a strong individual.")
    
    var screens: [Batman] = []
    
    @IBOutlet weak var mainPic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        n = 0;
        
        screens = [backstory, weakness, strength] // add backstory and weakness here
        
        mainPic.layer.masksToBounds = true;
                
        mainPic.layer.cornerRadius = mainPic.frame.height / 2
        // Do any additional setup after loading the view.
    }
    @IBAction func coolBack (sender: UIButton) {
        n = 0
        performSegue(withIdentifier: "detailSegue", sender: coolBack)
        print("coolBack")
    }
    
    @IBAction func weaknessScreen (sender: UIButton) {
        n = 1
        performSegue(withIdentifier: "detailSegue", sender: weaknessScreen)
        print("weaknessScreen")
    }
    
    @IBAction func strengthScreen (sender: UIButton) {
        n = 2
        performSegue(withIdentifier: "detailSegue", sender: strengthScreen)
        print("strengthScreen", n)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("This is N: ", n)
        if segue.identifier == "detailSegue",
                let Sub_View = segue.destination as? Sub_View {
            if n == 0 {
                Sub_View.batman = screens[0]
                print("got here 0")
            } else if n == 1 {
                Sub_View.batman = screens[1]
                print("got here 1")

            } else if n == 2 {
                Sub_View.batman = screens[2]
                print("got here 2")

            }

        }
    }


}

