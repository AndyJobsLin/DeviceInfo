//
//  LoginViewController.swift
//  DeviceInfo
//
//  Created by AndyJobs.Lin on 2018/5/30.
//  Copyright © 2018年 andy. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var LoginInfo: UILabel!
    @IBOutlet weak var SystemCode: UILabel!
    @IBOutlet weak var EmpNo: UILabel!
    @IBOutlet weak var Time: UILabel!
    @IBOutlet weak var EndTime: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        var qrcode = "C8CII0000AA8CIAE4C28AAI00AE2G6I6IAGA84200AE2G6IG2AG84A0"
        
        qrcode = qrcode.replacingOccurrences(of: "A", with: "1")
        qrcode = qrcode.replacingOccurrences(of: "C", with: "3")
        qrcode = qrcode.replacingOccurrences(of: "E", with: "5")
        qrcode = qrcode.replacingOccurrences(of: "G", with: "7")
        qrcode = qrcode.replacingOccurrences(of: "I", with: "9")
        
        LoginInfo.text = qrcode
        
        
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
