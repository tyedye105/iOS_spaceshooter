//
//  gameScene.swift
//  Ios Space shooter
//
//  Created by Marty on 6/20/17.
//  Copyright © 2017 Marty. All rights reserved.
//

import SpriteKit

class GameScene : SKScene {
    
    let backGroundScene1 = SKSpriteNode(imageNamed: "background")
    var textureArray = [SKTexture]()
    
    let spaceShip = SKSpriteNode(imageNamed: "1")
    
    override func didMove(to view: SKView) {
        //background
        backGroundScene1.anchorPoint = CGPoint.zero
        backGroundScene1.position = CGPoint.zero
        backGroundScene1.size = self.size
        self.addChild(backGroundScene1)
        
        textureArray.append(SKTexture(imageNamed: "1"))
        textureArray.append(SKTexture(imageNamed: "2"))
        textureArray.append(SKTexture(imageNamed: "3"))
        textureArray.append(SKTexture(imageNamed: "4"))
        textureArray.append(SKTexture(imageNamed: "5"))
        textureArray.append(SKTexture(imageNamed: "6"))
        textureArray.append(SKTexture(imageNamed: "7"))
        textureArray.append(SKTexture(imageNamed: "8"))
       
        spaceShip.position = CGPoint(x: self.size.width/2 , y: 100)
        spaceShip.setScale(0.2)
        spaceShip.zPosition = 1
        self.addChild(spaceShip)
        
        spaceShip.run(SKAction.repeatForever(SKAction.animate(with: textureArray, timePerFrame: 0.1)))
       
    }
    
    
}
