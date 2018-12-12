//
//  GRSoundRowController.swift
//  GR-Sounds-Watch Extension
//
//  Created by Marcus on 2018-12-12.
//  Copyright © 2018 Marcus. All rights reserved.
//

import WatchKit

class GRSoundRowController: NSObject {

    @IBOutlet weak var soundLabel: WKInterfaceLabel!
    
    var text: String = "" {
        willSet {
            self.soundLabel.setText(newValue)
        }
    }
}
