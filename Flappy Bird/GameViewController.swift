//
//  GameViewController.swift
//  Flappy Bird
//
//  Created by Shaoting Zhou on 2017/8/8.
//  Copyright © 2017年 Shaoting Zhou. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController:UIViewController {
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        if let skView = self.view as? SKView {
            if skView.scene == nil {
                //创建场景
                let scale = skView.bounds.size.height / skView.bounds.size.width  //长宽比
                let bgView = GameScene.init(size: CGSize.init(width: 329, height: 320 * scale)) //场景
//                skView.showsFPS = true //显示帧率
//                skView.showsNodeCount = true //显示节点数量
//                skView.showsPhysics = true //显示物理模型(边框)
                skView.ignoresSiblingOrder = true //忽略添加顺序
                
                bgView.scaleMode = .aspectFill //正比例缩放
                
                skView.presentScene(bgView) //加载视图
                
            }
        }
        
        
    }
    /**
     *  顶部状态栏隐藏
     */
    override var prefersStatusBarHidden : Bool {
        return true
    }
    
}
