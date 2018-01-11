//
//  InterestViewController.swift
//  OnlyYou
//
//  Created by 王雪时 on 2018/1/11.
//  Copyright © 2018年 王雪时. All rights reserved.
//

import UIKit
import AudioToolbox
class InterestViewController: UIViewController {
    @IBOutlet weak var vSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func viberate(){
        if(vSwitch.isOn){
            AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        }else{
        }
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
