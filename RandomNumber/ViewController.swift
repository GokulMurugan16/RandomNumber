//
//  ViewController.swift
//  RandomNumber
//
//  Created by Gokul Murugan on 2021-02-09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var n1: UILabel!
    @IBOutlet weak var n2: UILabel!
    @IBOutlet weak var n3: UILabel!
    @IBOutlet weak var n4: UILabel!
    @IBOutlet weak var n5: UILabel!
    @IBOutlet weak var n6: UILabel!
    
    var Array:[Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func drawButton(_ sender: Any) {
        
        
        var numbers = [randomNum(),randomNum(),randomNum(),randomNum(),randomNum(),randomNum()]
        var dups = Dictionary(grouping: numbers, by: {$0}).filter { $1.count > 1 }.keys

        
        while (dups.count != 0)
        {
            numbers = [randomNum(), randomNum(), randomNum(), randomNum(), randomNum(), randomNum()]
            dups = Dictionary(grouping: numbers, by: {$0}).filter { $1.count > 1 }.keys
            print(numbers)
            print(dups)
        }
        
        print(numbers)
        //Hello
        n1.text = "\(numbers[0])"
        n2.text = "\(numbers[1])"
        n3.text = "\(numbers[2])"
        n4.text = "\(numbers[3])"
        n5.text = "\(numbers[4])"
        n6.text = "\(numbers[5])"
        
        
    }
    
    
    @IBAction func clearButton(_ sender: Any) {
        
        self.n1.text = "-"
        self.n2.text = "-"
        self.n3.text = "-"
        self.n4.text = "-"
        self.n5.text = "-"
        self.n6.text = "-"
        
        
    }
    
    
    func randomInt(max:Int) -> Int{
        let rand:Int = Int(arc4random())
        return (rand % max) + 1
    }
    
    func randomNum()->Int{
        let max:Int = 65
        let random = randomInt(max: max)
        return random
    }
    
    
}

