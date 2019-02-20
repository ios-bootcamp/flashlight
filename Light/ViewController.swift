//
//  ViewController.swift
//  Light
//
//  Created by student12 on 1/22/19.
//

import UIKit

class ViewController: UIViewController {
    enum lightModes {
        case off
        case on
    }
    
    var currenMode: lightModes = .off {
        didSet {
            switch currenMode {
            case .on:
                nextMode = .off
                print("on")
                view.backgroundColor = .white
            case .off:
                nextMode = .on
                print("off")
                view.backgroundColor = .black
            }
        }
    }
    
    var nextMode: lightModes = .on
    var lightOn  = true
    
    @IBOutlet weak var button: UIButton!
    
    @IBAction func buttonPressed(_ sender: Any) {
        currenMode = nextMode
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currenMode = .off
    }


}

