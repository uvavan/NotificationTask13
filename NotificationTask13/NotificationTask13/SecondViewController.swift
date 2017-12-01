//
//  SecondViewController.swift
//  NotificationTask13
//
//  Created by Admin on 01.12.2017.
//  Copyright © 2017 Bioprom. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet private weak var ibLabelStatusNotification: UILabel!
    var notificationIsSent = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ibLabelStatusNotification.text = notificationIsSent ? "Notification  Sent!!!" : "Press to  Notify!"
    }
    
    @IBAction private func sendNotification(_ sender: Any) {
        ibLabelStatusNotification.text = "Notification  Sent!!!"
        NotificationCenter.default.post(name: .SendNotification, object: nil)
    }
    
}
