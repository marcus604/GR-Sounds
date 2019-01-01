//
//  InterfaceController.swift
//  GR-Sounds-Watch Extension
//
//  Created by Marcus on 2018-12-12.
//  Copyright © 2018 Marcus. All rights reserved.
//

import WatchKit
import Foundation
import AVFoundation
import os.log

class InterfaceController: WKInterfaceController {
    
    var player: WKAudioFilePlayer!
    
    let sounds = ["Horn", "Price is Sad", "Suprise", "John Cena"]

    @IBOutlet weak var audioPlay: WKInterfaceInlineMovie!
    @IBOutlet weak var soundTable: WKInterfaceTable!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        
        do {
            let fileUrl = NSURL.fileURL(withPath: path)
            //let items = try fm.contentsOfDirectory(atPath: path)
            let items = try fm.contentsOfDirectory(at: fileUrl, includingPropertiesForKeys: [.nameKey, .typeIdentifierKey, .fileResourceTypeKey], options: .skipsHiddenFiles)
            
            for item in items {
                let attributes = try item.resourceValues(forKeys:[.nameKey, .typeIdentifierKey, .fileResourceTypeKey])
                print(attributes.name!) // is String
                print(attributes.typeIdentifier!)
                print(attributes.fileResourceType!)
                
                print("Found \(item)")
            }
        } catch {
            // failed to read directory – bad permissions, perhaps?
        }
        soundTable.setNumberOfRows(sounds.count, withRowType: "SoundRowControllerIdentifier")
        
        for (index, name) in sounds.enumerated() {
            let row = soundTable.rowController(at: index) as! GRSoundRowController
            row.soundLabel.setText(name)
        }
    }
    
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        print(rowIndex)
        print(sounds[rowIndex])
        playSound(withName: sounds[rowIndex])
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func playSound(withName name: String) {
        let filePath = Bundle.main.path(forResource: name, ofType: "mp3")!
        let fileUrl = NSURL.fileURL(withPath: filePath)
        audioPlay.setMovieURL(fileUrl)
        audioPlay.playFromBeginning()
        
    }


}


    

    

