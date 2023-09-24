//
//  ViewController.swift
//  2409RemotePush_SB
//
//  Created by Ethan on 2023/9/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // MARK: App開啟後取得授權 取得授權
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // MARK: 非同步取得授權
        Task{
            //provisional 第一次靜音模式
            let opt: UNAuthorizationOptions = [.alert, .badge, .sound]
            if try! await UNUserNotificationCenter.current().requestAuthorization(options: opt){
                
            }
            else{
                //可知道使用者允不允許推播放 使用者隨時可以更改
            }
        }
    }
}

