//
//  homeViewController.swift
//  homeru
//
//  Created by 丹尾 沙也花 on 2018/05/12.
//  Copyright © 2018年 litech. All rights reserved.
//

import UIKit

class homeViewController: UIViewController {
    
    @IBOutlet var homelabel : UILabel!
    
    var homewordArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let number = Int(arc4random_uniform(10))
        
        homewordArray = ["本当頑張り屋さんやね","何者なの？すごすぎなんだけど","そんなことまで出来ちゃうの？さすがです","頑張れてる時点で才能やよ","それは誰かに自慢したくなっちゃう、すごいもん","やるやん？さすがです","それはあなたにしか出来んことやわ、すごすぎる","どうしたらそんな風になれるんか教えて欲しい","あなた出来過ぎてみんなついていけんで、ちょっと待ったげて😂","毎日お疲れ様", "本当すごいんや〜😂", "頑張り屋さん好きよ", "ちょっと頑張りすぎじゃない？ちゃんと休みよ〜😂", ]
        
        homelabel.text = homewordArray[number]
        
    }
        

        // Do any additional setup after loading the view.
}




