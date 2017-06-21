//
//  mainMenu.swift
//  Ios Space shooter
//
//  Created by Marty on 6/20/17.
//  Copyright © 2017 Marty. All rights reserved.
//

import SpriteKit

class MainMenu: SKScene {
    
    let playButton = SKSpriteNode(imageNamed: "play_buttons")
    
    let playBanner = SKSpriteNode(imageNamed: "top_banner")
    
    override func didMove(to view: SKView) {
        playButton.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        self.addChild(playButton)
        playBanner.anchorPoint = CGPoint(x: 1, y: 1)
        playBanner.position = CGPoint(x: self.size.width
            , y: self.size.height)
        playBanner.size.width = self.size.width
        self.addChild(playBanner)
    }
    
}
