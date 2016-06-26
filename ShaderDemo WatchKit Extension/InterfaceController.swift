//
//  InterfaceController.swift
//  SkylineWatch Extension
//
//  Created by Allan Lavell on 2016-06-15.
//  Copyright © 2016 ThinkRad Studios Inc. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet var skInterface: WKInterfaceSKScene!
    
    override func awake(withContext context: AnyObject?) {
        super.awake(withContext: context)
        
        let scene = ShaderScene()
        scene.scaleMode = .aspectFill
        skInterface.preferredFramesPerSecond = 30
        skInterface.presentScene(scene)
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
