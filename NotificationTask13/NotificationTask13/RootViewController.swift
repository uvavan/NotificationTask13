//
//  ViewController.swift
//  NotificationTask13
//
//  Created by Admin on 01.12.2017.
//  Copyright © 2017 Bioprom. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    @IBOutlet private weak var ibLabelStatusNotification: UILabel!
    private var notificationIsSent = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ibLabelStatusNotification.text = "Waiting t o  be  notified..."
        NotificationCenter.default.addObserver(self, selector: #selector(workNotification), name: .SendNotification, object: nil)
    }
    
    @objc private func workNotification() {
        ibLabelStatusNotification.text = "I've  got  a  notification"
        notificationIsSent = true
    }

    @IBAction func resetPress(_ sender: Any) {
        ibLabelStatusNotification.text = "Waiting t o  be  notified..."
        notificationIsSent = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destVC = segue.destination as? SecondViewController else { return }
        destVC.notificationIsSent = notificationIsSent
    }
    
}

