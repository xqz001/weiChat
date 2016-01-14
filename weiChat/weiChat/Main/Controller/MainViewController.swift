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

        // 通过UITabBarItem的appearance来设置tabBar中字体的颜色，这样设置的话所有的tabBar中的字体颜色都改变了
        // 关于UIAppearance的用法参考南峰子大大的博客：http://southpeak.github.io/blog/2015/07/20/cocoa-uikit-uiapearance/
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName : UIColor(red: 47.0 / 255.0, green: 177.0 / 255.0, blue: 9.0 / 255.0, alpha: 1.0)], forState: .Selected)
        // Do any additional setup after loading the view.
        // 消息
        let messageVc = MessageViewController()
        addChildViewController(messageVc, title: "微信", image: UIImage(named: "tabbar_mainframe"), selectedImage: UIImage(named: "tabbar_mainframeHL"))
        
        // 通讯录
        let contactsVc = ContactsTableViewController()
        addChildViewController(contactsVc, title: "通讯录", image: UIImage(named: "tabbar_contacts"), selectedImage: UIImage(named: "tabbar_contactsHL"))
        
        // 发现
        let discoverVc  = DiscoverTableViewController()
        addChildViewController(discoverVc, title: "发现", image: UIImage(named: "tabbar_discover"), selectedImage: UIImage(named: "tabbar_discoverHL"))
        
        // 我
        let meVc = MeTableViewController()
        addChildViewController(meVc, title: "我", image: UIImage(named: "tabbar_me"), selectedImage: UIImage(named: "tabbar_meHL"))
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func addChildViewController(childController: UIViewController,title: String,image: UIImage?, selectedImage: UIImage?) {
        childController.title = title
        childController.tabBarItem.image = image?.imageWithRenderingMode(.AlwaysOriginal)
        childController.tabBarItem.selectedImage = selectedImage?.imageWithRenderingMode(.AlwaysOriginal)
        
        let navVc = NavigationViewController.init(rootViewController:childController)
        self.addChildViewController(navVc)
    }

}
