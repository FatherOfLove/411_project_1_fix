//
//  GameMenu.swift
//  411 Project_1
//
//  Created by Xianghui Huang on 3/03/19.
//  Copyright © 2019 Xianghui Huang. All rights reserved.
//

import Foundation
import SpriteKit
import AVFoundation


class GameMenu: SKScene{
    

    
    
    var gameSettings = Settings.sharedInstance
    
    override func didMove(to view: SKView) {
        var startGame = SKLabelNode()
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        startGame = self.childNode(withName: "startGame") as! SKLabelNode
        var bestScore = SKLabelNode()
        bestScore = self.childNode(withName: "bestScore") as! SKLabelNode
        bestScore.text = "Best : \(gameSettings.highScore)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches{
            let touchLocation = touch.location(in: self)
            if atPoint(touchLocation).name == "startGame"{
                let gameScene = SKScene(fileNamed: "GameScene")!
                gameScene.scaleMode = .aspectFill
                view?.presentScene(gameScene, transition: SKTransition.doorsOpenHorizontal(withDuration: TimeInterval(2)))
                
            }
        }
        
    }
    
}
