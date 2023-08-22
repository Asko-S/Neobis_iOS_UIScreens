// FinanceMainTabBar.swift
// Neobis_iOS_UIScreens
// Created by Askar Soronbekov

import Foundation
import UIKit

let pieImage : UIImageView = {
    let image = UIImageView()
    image.image = UIImage(named: "mainFinance")
    image.backgroundColor = .yellow
    
    return image
}()

class FinanceMainTabBar: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.tintColor = .black
        tabBar.layer.borderColor = UIColor.gray.cgColor
        tabBar.layer.borderWidth = 0.4
        tabBar.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 100)
        setupTabBar()
    }
    
    func setupTabBar() {
        
        let vc = FinanceViewController()
        
        vc.tabBarItem = UITabBarItem(title: "Главная", image: pieImage.image?.withAlignmentRectInsets(.init(top: 0, left: 0, bottom: 0, right: 0)), tag: 0)
        
        let vc1 = createVC(vc: UIViewController(), itemName: "Отчёты", itemImage: "reports")
        vc1.view.backgroundColor = .white
        
        let vc2 = createVC(vc: UIViewController(), itemName: "Профиль", itemImage: "profileFinance")
        vc2.view.backgroundColor = .white
        
        viewControllers = [vc, vc1, vc2]
    }
    
    func createVC(vc: UIViewController, itemName: String, itemImage: String) -> UINavigationController {
        
        let item = UITabBarItem(title: itemName, image: UIImage(named: itemImage)?.withAlignmentRectInsets(.init(top: 00, left: 0, bottom: 0, right: 0)), tag: 0)
        
        item.titlePositionAdjustment = .init(horizontal: 0, vertical: 0)
        
        let vc1 = UINavigationController(rootViewController: vc)
        vc1.tabBarItem = item
        
        return vc1
    }
}
