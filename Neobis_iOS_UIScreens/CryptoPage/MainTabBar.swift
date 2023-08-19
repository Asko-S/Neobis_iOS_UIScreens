//  MainTabBar.swift
//  Neobis_iOS_UIScreens
//  Created by Askar Soronbekov 

import Foundation
import UIKit

class MainTabBar: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.frame.size.height = 75
        tabBar.tintColor = .red
        setupTabBar()
    }
    
    func setupTabBar() {
        
        let vc = CryptoViewController()
        
        vc.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "main")?.withAlignmentRectInsets(.init(top: 10, left: 0, bottom: 0, right: 0)), tag: 0)
        
        
        
        let vc1 = createViewController(vc: UIViewController(), itemName: "", itemImage: "Main2")
        vc1.view.backgroundColor = .white
        
        let vc2 = createViewController(vc: UIViewController(), itemName: "", itemImage: "profile")
        vc2.view.backgroundColor = .white
        
        viewControllers = [vc, vc1, vc2]
    }
    
    func createViewController(vc: UIViewController, itemName: String, itemImage: String) -> UINavigationController {
        
        let item = UITabBarItem(title: itemName, image: UIImage(named: itemImage)?.withAlignmentRectInsets(.init(top: 10, left: 0, bottom: 0, right: 0)), tag: 0)
        
        item.titlePositionAdjustment = .init(horizontal: 0, vertical: 0)
        
        let vc1 = UINavigationController(rootViewController: vc)
        vc1.tabBarItem = item
        
        return vc1
    }
}
