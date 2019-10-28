//
//  ViewController.swift
//  Project 21 - Local Notifications
//
//  Created by Sean Williams on 28/10/2019.
//  Copyright © 2019 Sean Williams. All rights reserved.
//

import UserNotifications
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Register", style: .plain, target: self, action: #selector(registerLocal))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Schedule", style: .plain, target: self, action: #selector(scheduleLocal))
        
    }

    @objc func registerLocal() {
        let center = UNUserNotificationCenter.current()
        
        center.requestAuthorization(options: [.alert, .badge, .sound]) { (granted, error) in
            if granted {
                print("YES")
            } else {
                print("Heichaletza!")
            }
        }
    
    }
    
    @objc func scheduleLocal() {
        
    }

}

