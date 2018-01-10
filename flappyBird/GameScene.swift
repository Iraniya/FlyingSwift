//
//  GameScene.swift
//  flappyBird
//
//  Created by Shilpy Samaddar on 11/01/18.
//  Copyright © 2018 iraniya. All rights reserved.
//

import SpriteKit
import GameplayKit

enum Layer: CGFloat {
    case background
    case foreground
}

class GameScene: SKScene {
    
    let worldNode = SKNode()
    var playableStart: CGFloat = 0
    var playableHeight: CGFloat = 0
    
    override func didMove(to view: SKView) {
        addChild(worldNode)
        setupBackground()
        setupForeground()
    }
    
    func setupBackground() {
        let background = SKSpriteNode(imageNamed: "Background")
        background.anchorPoint = CGPoint(x: 0.5, y: 1.0)
        background.position = CGPoint(x: size.width/2, y: size.height)
        background.zPosition = Layer.background.rawValue
        playableStart = size.height - background.size.height
        playableHeight = background.size.height
        
        worldNode.addChild(background)
    }
    
    func setupForeground() {
        let foregound = SKSpriteNode(imageNamed: "Ground")
        foregound.anchorPoint = CGPoint(x: 0.0, y: 1.0)
        foregound.position = CGPoint(x: size.width/2, y: playableStart)
        foregound.zPosition = Layer.foreground.rawValue
        worldNode.addChild(foregound)
    }
}
