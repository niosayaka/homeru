//
//  ganbariTableViewController.swift
//  homeru
//
//  Created by 丹尾 沙也花 on 2018/05/12.
//  Copyright © 2018年 litech. All rights reserved.
//

import UIKit

class ganbariTableViewController: UITableViewController {
    
    @IBOutlet weak var ganbariTable: UITableView!
    
    var taishoArray = [String]()
    
    let saveData = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "ganbariTableViewCell", bundle: nil), forCellReuseIdentifier: "ganbari")
                tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        if saveData.array(forKey: "ganbari") != nil{
            taishoArray = saveData.array(forKey: "ganbari") as! [String]
        }
        tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        //セルの個数を指定
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taishoArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ganbari = tableView.dequeueReusableCell(withIdentifier: "ganbari", for: indexPath) as! ganbariTableViewCell
        
        let ganbarishu = taishoArray[indexPath.row]

        ganbari.ganbarilabel.text = ganbarishu
        
        return ganbari
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        if editingStyle == UITableViewCellEditingStyle.delete{
            taishoArray.remove(at: indexPath.row)
            UserDefaults.standard.set(taishoArray, forKey: "ganbari")
            tableView.reloadData()
        }//Cellに表示されている文字を削除するメゾット
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }//再読み込みメゾット
}
