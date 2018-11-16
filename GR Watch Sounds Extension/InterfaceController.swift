//
//  InterfaceController.swift
//  GR Watch Sounds Extension
//
//  Created by Marcus on 2018-11-14.
//  Copyright © 2018 Marcus. All rights reserved.
//

import WatchKit
import Foundation
import AVFoundation
import os.log


class InterfaceController: WKInterfaceController {
    
    var player: WKAudioFilePlayer!
  
    @IBOutlet weak var audioPlay: WKInterfaceInlineMovie!
    
    @IBAction func buttonPress() {
       playSound(withName: "horn")
    }
    
    @IBAction func priceIsSadPress() {
        playSound(withName: "priceissad")
    }
    
    @IBAction func wompWompPress() {
        playSound(withName: "sadtrombone")
    }
    
    @IBAction func suprisePress() {
        playSound(withName: "suprise")
    }
    @IBAction func trolololPress() {
        playSound(withName: "trololol")
    }
    
    @IBAction func dmxBitchPress() {
        playSound(withName: "dmxbitch")
    }
    
    @IBAction func johnCenaPress() {
        playSound(withName: "johncena")
    }
    @IBAction func expectDiePress() {
        playSound(withName: "expectdie")
    }
    

    func playSound(withName name: String) {
        let filePath = Bundle.main.path(forResource: name, ofType: "mp3")!
        let fileUrl = NSURL.fileURL(withPath: filePath)
        audioPlay.setMovieURL(fileUrl)
        audioPlay.playFromBeginning()
        
    }
    
   
    
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
