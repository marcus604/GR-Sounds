//
//  ViewController.swift
//  GR Sounds
//
//  Created by Marcus on 2018-10-26.
//  Copyright © 2018 Marcus. All rights reserved.
//

import UIKit
import AVFoundation
import os.log

class ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer?
    
    @IBOutlet weak var bobRossButton: UIButton!
    
    
    @IBAction func bobRossButtonTapped(_ sender: UIButton) {
        
        playSound(nameOfAudioFileInAssetCatalog: "bobrossAudio")
        UIButton.animate(withDuration: 0.005,
                         animations: {
                            sender.transform = CGAffineTransform(rotationAngle: 0.14906585)
        },
                         completion: { finish in
                            UIButton.animate(withDuration: 0.005, animations: {
                                sender.transform = CGAffineTransform.identity
                            })
        })
        
    }
    
    func playSound(nameOfAudioFileInAssetCatalog: String) {
        var alarmAudioPlayer: AVAudioPlayer?
        if let sound = NSDataAsset(name: nameOfAudioFileInAssetCatalog) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data, fileTypeHint: AVFileType.m4a.rawValue)
                audioPlayer!.play()
            } catch {
                os_log(.debug, log: OSLog.default, "Could not play audio file")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
