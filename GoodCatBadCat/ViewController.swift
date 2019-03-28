//
//  ViewController.swift
//  GoodCatBadCat
//
//  Created by Jordan.Morgan2 on 3/27/19.
//  Copyright © 2019 Jordan.Morgan2. All rights reserved.
//

import UIKit
import AVFoundation

var catName: String = ""

class ViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func nameSet(_ sender: Any) {
        catName = name.text!
        
        let alert1 = UIAlertController(title: "Hi!", message: "Hello, \(catName)", preferredStyle: UIAlertController.Style.alert)
        
        alert1.addAction(UIAlertAction(title: "Meow?", style: UIAlertAction.Style.default, handler: { action in self.performSegue(withIdentifier: "nameSet", sender: self) }))
        
        present(alert1, animated: true, completion: nil)
    }
    
}

class ViewController2: UIViewController {
    var audioPlayer = AVAudioPlayer()
    
    let sound = Bundle.main.path(forResource: "glassBreak", ofType: "mp3")
    override func viewDidLoad(){
        super.viewDidLoad()
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
        catch{
            print(error)
        }
    }
    
    @IBAction func testGravity(_ sender: Any) {
        audioPlayer.play()
    }
}

class ViewController3: UIViewController {
    
    
}

class ViewController4: UIViewController {
    
    @IBAction func goodKitty(_ sender: Any) {
        let alert4 = UIAlertController(title: "Good Kitty!", message: "\(catName) is Good Kitty.", preferredStyle: UIAlertController.Style.alert)
        
        alert4.addAction(UIAlertAction(title: "Puurrrrr...", style: UIAlertAction.Style.default, handler: {action in self.performSegue(withIdentifier: "goodKitty", sender: self)}))
        
        present(alert4, animated: true, completion: nil)
    }
}

class ViewController5: UIViewController {
    
    
    
}

class ViewController6: UIViewController {
    
    @IBAction func normaKitty(_ sender: Any) {
        let alert6 = UIAlertController(title: "Normal Kitty.", message: "\(catName) is Normal Kitty.", preferredStyle: UIAlertController.Style.alert)
        
        alert6.addAction(UIAlertAction(title: "Puurrrrr...", style: UIAlertAction.Style.default, handler: {action in self.performSegue(withIdentifier: "normalKitty", sender: self)}))
        
        present(alert6, animated: true, completion: nil)
    }
}

class ViewController7: UIViewController {
    
    @IBAction func badKitty(_ sender: Any) {
        let alert7 = UIAlertController(title: "Bad Kitty!", message: "\(catName) is Bad Kitty.", preferredStyle: UIAlertController.Style.alert)
        
        alert7.addAction(UIAlertAction(title: "Puurrrrr...", style: UIAlertAction.Style.default, handler: {action in self.performSegue(withIdentifier: "badKitty", sender: self)}))
        
        present(alert7, animated: true, completion: nil)
    }
}
