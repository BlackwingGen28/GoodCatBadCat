//
//  ViewController.swift
//  GoodCatBadCat
//
//  Created by Jordan.Morgan2 on 3/27/19.
//  Copyright © 2019 Jordan.Morgan2. All rights reserved.
//

import UIKit

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

class ViewController3: UIViewController {
    
}

class ViewController4: UIViewController {
    
}

class ViewController5: UIViewController {
    
}

class ViewController6: UIViewController {
    
}

class ViewController7: UIViewController {
    
}
