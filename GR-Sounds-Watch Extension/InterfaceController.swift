//
//  InterfaceController.swift
//  GR-Sounds-Watch Extension
//
//  Created by Marcus on 2018-12-12.
//  Copyright © 2018 Marcus. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    let sounds = ["Horn", "DMX", "Wilhelm", "John Cena"]

    @IBOutlet weak var soundTable: WKInterfaceTable!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        soundTable.setNumberOfRows(sounds.count, withRowType: "SoundRowControllerIdentifier")
        
        for (index, name) in sounds.enumerated() {
            let row = soundTable.rowController(at: index) as! GRSoundRowController
            row.soundLabel.setText(name)
        }
    }
    
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        print(rowIndex)
        
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
