//
//  AddNoteViewController.swift
//  OnlyYou
//
//  Created by 王雪时 on 2018/1/11.
//  Copyright © 2018年 王雪时. All rights reserved.
//

import UIKit

class AddNoteViewController: UIViewController {
    
    @IBOutlet weak var biaoti: UITextField!
    @IBOutlet weak var content: UITextField!
    @IBOutlet weak var date: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func close()
    {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createFile()
    {
        let writeData:Data=(content.text?.data(using: String.Encoding.utf8))!
        let fileMangaer = FileManager.default
        let paths = fileMangaer.urls(for: .documentDirectory, in: .userDomainMask)
        var docPath = paths[0]
        docPath.appendPathComponent("note.txt")
        //print(docPath)
        do{
            //try  writeData.write(to: docPath)
            let fileHandle = try FileHandle(forWritingTo: docPath)
            fileHandle.seekToEndOfFile()
            fileHandle.write(writeData)
            fileHandle.closeFile()
        }
        catch{print(error)}
        
        //date
        let formatter = DateFormatter()
        let str = formatter.string(from: date.date)
        //still need to do sth.///////////
        
        dismiss(animated: true, completion: nil)
    }
    
    

}
