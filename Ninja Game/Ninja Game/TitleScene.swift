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
    //var action: () -> Void
    
    
    init(size: CGSize, highScore:Int) {
        
        super.init(size: size)
        
        // 1
        backgroundColor = SKColor.white
        
        let button: GGButton = GGButton(defaultButtonImage: "001.gif", activeButtonImage: "002.gif", buttonAction: goToGameScene)
        button.position = CGPoint(x: size.width / 2, y: size.height / 4)
        addChild(button)
        
        // 3
        let label = SKLabelNode(fontNamed: "Chalkduster")
        label.text = "High Score: \(highScore)"
        label.fontSize = 40
        label.fontColor = SKColor.black
        label.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(label)
        
        
    }
    
    // 6
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func goToGameScene() {
        print("HI!!!")
    }


}
