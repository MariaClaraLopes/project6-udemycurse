//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
//    let eggTimes = ["Soft": 10, "Medium": 20, "Hard": 30]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func eggSelected(_ sender: UIButton) {
        let egg = sender.titleLabel?.text ?? ""
        var result = eggTimes[egg] ?? 0
        print(result)
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
            if result > 0 {
                print("\(result) segundos")
                result -= 1
            } else {
                Timer.invalidate()
            }
        }
    }
}

