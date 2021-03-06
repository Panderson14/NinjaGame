//
//  GameOverScene.swift
//  Ninja Game
//
//  Created by Patrick Anderson on 10/16/16.
//  Copyright © 2016 Patrick Anderson. All rights reserved.
//

import Foundation
import SpriteKit

class GameOverScene: SKScene {
    
    init(size: CGSize, finalCount:Int) {
        
        super.init(size: size)
        
        // 1
        backgroundColor = SKColor.white
        

        
        // 3
        let label = SKLabelNode(fontNamed: "Chalkduster")
        label.text = "You caught \(finalCount) Pokémon!"
        label.fontSize = 40
        label.fontColor = SKColor.black
        label.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(label)
        
        // 4
        run(SKAction.sequence([
            SKAction.wait(forDuration: 3.0),
            SKAction.run() {
                // 5
                let reveal = SKTransition.flipHorizontal(withDuration: 0.5)
                let scene = TitleScene(size: size, highScore: finalCount)
                self.view?.presentScene(scene, transition:reveal)
            }
            ]))
        
    }
    
    // 6
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
