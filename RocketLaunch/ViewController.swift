//
//  ViewController.swift
//  RocketLaunch
//
//  Created by Владислав Баранкевич on 25.03.2022.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - @IBOutlets
    
    @IBOutlet weak var rocketView: UIView!
    @IBOutlet weak var rocketImageView: UIImageView!
    @IBOutlet weak var statusLabel: UILabel!
    
    //MARK: - UIView lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func startButtonPressed() {
        rocketView.isHidden = false
    }
}

