//
//  ViewController.swift
//  DeviceInfo
//
//  Created by AndyJobs.Lin on 2018/5/30.
//  Copyright © 2018年 andy. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var SystemName: UILabel!
    @IBOutlet weak var systemVersion: UILabel!
    @IBOutlet weak var Model: UILabel!
    @IBOutlet weak var localizedModel: UILabel!
    @IBOutlet weak var IdentifierForVendor: UILabel!
    
    @IBOutlet weak var Time: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Name.text = UIDevice.current.name
        SystemName.text = UIDevice.current.systemName
        systemVersion.text = UIDevice.current.systemVersion
        Model.text = UIDevice.current.model
        localizedModel.text = UIDevice.current.localizedModel
        IdentifierForVendor.text = UIDevice.current.identifierForVendor?.uuidString
        
        
        
//        let dateTime =
//            DateFormatter().date(from: "2018/05/30 14:00:00")
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy/MM/dd HH:mm:ss"
        
        let timeInterval: TimeInterval = dateFormatter.date(from: "2999/12/31 00:00:00")!.timeIntervalSince1970 + 28800
        //let stringTime = dateFormatter.string(from: Date())
        
        var qrcode = "C8CII0000AA8CIAE4C28AAI00AE2G6I6IAGA84200AE2G6IG2AG84A0"
        
        qrcode = qrcode.replacingOccurrences(of: "A", with: "1")
        qrcode = qrcode.replacingOccurrences(of: "C", with: "3")
        qrcode = qrcode.replacingOccurrences(of: "E", with: "5")
        qrcode = qrcode.replacingOccurrences(of: "G", with: "7")
        qrcode = qrcode.replacingOccurrences(of: "I", with: "9")
        
        Time.text = qrcode//"\(timeInterval)" //stringTime//
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

