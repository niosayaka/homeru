//
//  ganbariViewController.swift
//  homeru
//
//  Created by 丹尾 沙也花 on 2018/05/12.
//  Copyright © 2018年 litech. All rights reserved.
//

import UIKit

class ganbariViewController: UIViewController,UITableViewDelegate {
        
        @IBOutlet weak var ganbariTable: UITableView!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            if UserDefaults.standard.object(forKey: "taisho") != nil {
                ganbari = UserDefaults.standard.object(forKey: "taisho") as! [String]
            }
        }
        
        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return ganbari.count
        }
        
    private func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        let cellValue = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
            cellValue .textLabel?.text = ganbari[indexPath.row]
            return cellValue
        }
        
        
        func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
            if editingStyle == UITableViewCellEditingStyle.delete{
                ganbari.remove(at: indexPath.row)
                UserDefaults.standard.set(ganbari, forKey: "taisho")
                ganbariTable.reloadData()
            }
        }
        
    override func viewDidAppear(_ animated: Bool) {
            ganbariTable.reloadData()
        }
        
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }

}
