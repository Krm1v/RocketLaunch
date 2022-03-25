//
//  ViewController.swift
//  RocketLaunch
//
//  Created by Владислав Баранкевич on 25.03.2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //MARK: - @IBOutlets
    
    @IBOutlet weak var rocketView: UIView!
    @IBOutlet weak var rocketImageView: UIImageView!
    @IBOutlet weak var statusLabel: UILabel!
    
    //MARK: - Properties
    
    var player: AVAudioPlayer?
    
    //MARK: - UIView lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let path = Bundle.main.path(forResource: "launch", ofType: "mp3") else { return }
        let url = URL(fileURLWithPath: path)
        player = try? AVAudioPlayer(contentsOf: url)
        player?.prepareToPlay()
    }
    
    //MARK: - @IBAction
    
    @IBAction func startButtonPressed() {
        rocketView.isHidden = false
        player?.play()
        statusLabel.isHidden = true
        let frame = rocketImageView.frame
        rocketImageView.frame.origin.y = 1000
        UIView.animate(withDuration: 3.5) {
            self.rocketImageView.frame = frame
        } completion: { _ in
            self.statusLabel.isHidden = false
        }
    }
}

