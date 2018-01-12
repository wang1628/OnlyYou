//
//  NoticeViewController.swift
//  OnlyYou
//
//  Created by 王雪时 on 2018/1/11.
//  Copyright © 2018年 王雪时. All rights reserved.
//

import UIKit

class NoticeViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    
    let fileMangaer = FileManager.default
    var getData:NSString?=nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.setNeedsLayout()
        
        let paths = fileMangaer.urls(for: .documentDirectory, in: .userDomainMask)
        var docPath = paths[0]
        docPath.appendPathComponent("note.txt")
        do{
           // getData=try NSString(contentsOfFile: docPath, encoding: String.Encoding.ascii.rawValue)
            getData = try String(contentsOf: docPath, encoding: .utf8) as NSString
        }
        catch{print(error)}
        getData?.appending("\n")
        label.text=getData! as String
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
