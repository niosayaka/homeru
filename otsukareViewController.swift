//
//  otsukareViewController.swift
//  homeru
//
//  Created by 丹尾 沙也花 on 2018/05/12.
//  Copyright © 2018年 litech. All rights reserved.
//

import UIKit

class otsukareViewController: UIViewController {
    
    @IBOutlet weak var ganbariText: UITextField!
    //ganbariTextがUITextFieldと紐づいていることを宣言する

    var taishoArray = [String]()
    //取り出したデータを格納する配列
    //配列とは、複数のデータを1つの変数で管理できる入れ物
    //var＝変数
    //taishoArray＝変数名
    //String＝型の名前
    
    var ganbari : [String]  = []
    //ganbariという名の変数はString（文字）型＝[""]
    
    let saveData = UserDefaults.standard
    //sabeData=UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //画面遷移した時の一番最初にしか表示されない
        //操作系のコードはここに
        
        if saveData.array(forKey: "ganbari") != nil{
            taishoArray = saveData.array(forKey: "ganbari") as! [String]
        }
    }
    
    @IBAction func homeButton(){
        
        let ganbariword = ganbariText.text!
        
        taishoArray.append(ganbariword)
        saveData.set(taishoArray, forKey: "ganbari")
        //保存メゾット
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            self.view.endEditing(true)
    }//キーボード以外をタッチするとキーボードを下げるのコード
}
