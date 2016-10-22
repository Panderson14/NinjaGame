//
//  TitleScene.swift
//  Ninja Game
//
//  Created by Patrick Anderson on 10/21/16.
//  Copyright © 2016 Patrick Anderson. All rights reserved.
//

//
//  GameOverScene.swift
//  Ninja Game
//
//  Created by Patrick Anderson on 10/16/16.
//  Copyright © 2016 Patrick Anderson. All rights reserved.
//

import Foundation
import SpriteKit

class TitleScene: SKScene {
    
    
    var button: SKNode!
    
    init(size: CGSize, highScore:Int) {
        
        super.init(size: size)
        
        print("Im in the Title Scene!")
        
        // 1
        backgroundColor = SKColor.white
        
        button = SKSpriteNode(color: SKColor.red, size: CGSize(width: 100, height: 44))
        button.position = CGPoint(x: size.width / 4, y: size.height / 4)
        addChild(button)
        
        // 3
        let label = SKLabelNode(fontNamed: "Chalkduster")
        label.text = "You caught \(highScore) Pokémon!"
        label.fontSize = 40
        label.fontColor = SKColor.black
        label.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(label)
        
        
    }
    
    // 6
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
