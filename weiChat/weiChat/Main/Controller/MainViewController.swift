//
//  MainViewController.swift
//  weiChat
//
//  Created by liwei on 16/1/13.
//  Copyright © 2016年 com.test.ios. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName : UIColor(red: 47.0 / 255.0, green: 177.0 / 255.0, blue: 9.0 / 255.0, alpha: 1.0)], forState: .Selected)
        // Do any additional setup after loading the view.
        // 消息
        let messageVc = MessageViewController()
        messageVc.title = "微信"
        messageVc.tabBarItem.image = UIImage(named: "tabbar_mainframe")?.imageWithRenderingMode(.AlwaysOriginal)
        messageVc.tabBarItem.selectedImage = UIImage(named: "tabbar_mainframeHL")?.imageWithRenderingMode(.AlwaysOriginal)
        messageVc.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName : UIColor(red: 47.0 / 255.0, green: 177.0 / 255.0, blue: 9.0 / 255.0, alpha: 1.0)], forState: .Selected)
        self.addChildViewController(messageVc)
        
        // 通讯录
        let contactsVc = ContactsTableViewController()
        contactsVc.title = "通讯录"
        contactsVc.tabBarItem.image = UIImage(named: "tabbar_contacts")?.imageWithRenderingMode(.AlwaysOriginal)
        contactsVc.tabBarItem.selectedImage = UIImage(named: "tabbar_contactsHL")?.imageWithRenderingMode(.AlwaysOriginal)
        self.addChildViewController(contactsVc)
        
        // 发现
        let discoverVc  = DiscoverTableViewController()
        discoverVc.title = "发现"
        discoverVc.tabBarItem.image = UIImage(named: "tabbar_discover")?.imageWithRenderingMode(.AlwaysOriginal)
        discoverVc.tabBarItem.selectedImage = UIImage(named: "tabbar_discoverHL")?.imageWithRenderingMode(.AlwaysOriginal)
        self.addChildViewController(discoverVc)
        
        // 我
        let meVc = MeTableViewController()
        meVc.title = "我"
        meVc.tabBarItem.image = UIImage(named: "tabbar_me")?.imageWithRenderingMode(.AlwaysOriginal)
        meVc.tabBarItem.selectedImage = UIImage(named: "tabbar_meHL")?.imageWithRenderingMode(.AlwaysOriginal)
        self.addChildViewController(meVc)
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

//    func addChildViewController(childController: UIViewController) {
//        
//    }

}
