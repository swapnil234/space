//
//  GameScene.swift
//  Autopilot
//
//  Created by Swapnil Thombre on 7/15/16.
//  Copyright (c) 2016 Swapnil Thombre. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    let astronaut = SKSpriteNode(imageNamed: "penis.png")
    
    
    override func didMoveToView(view: SKView) {
        astronaut.setScale(0.1)
        self.addChild(astronaut)
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
            let touch = touches.first
            let location = touch!.locationInNode(self)
            astronaut.runAction(SKAction .moveTo(CGPointMake(location.x, location.y), duration: 1))
            
        }
}


