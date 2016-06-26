//
//  ShaderScene.swift
//  Skyline
//
//  Created by Allan Lavell on 2016-06-16.
//  Copyright © 2016 ThinkRad Studios Inc. All rights reserved.
//

import SpriteKit
import UIKit
import WatchKit

class ShaderScene: SKScene {
    func is42mmWatch() -> Bool {
        return WKInterfaceDevice.current().screenBounds.width > 136.0
    }
    
    override func sceneDidLoad() {
        let texture = SKTexture(imageNamed: is42mmWatch() ? "bg42.png" : "bg.png")
        let shaderSprite = SKSpriteNode(texture: texture, size: is42mmWatch() ? CGSize(width: 312, height: 390) : CGSize(width: 272, height: 320))
        
        shaderSprite.size = self.size
        shaderSprite.position = CGPoint(x: self.frame.size.width/2, y: self.frame.size.height/2);
        addChild(shaderSprite)
        
        let shader = SKShader(fileNamed: "ecophon.fsh")

        shaderSprite.shader = shader
    }
}
