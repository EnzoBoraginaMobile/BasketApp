//
//  TabBarViewController.swift
//  ProjectONE
//
//  Created by Enzo Boragina on 13/11/23.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        navigationController?.setNavigationBarHidden(true, animated: false)
        
        let viewController1 = GamesViewController()
        viewController1.tabBarItem = UITabBarItem(title: "Games", image: UIImage(systemName:"house"), tag: 0)

        let viewController2 = HomeViewController()
        viewController2.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "figure.basketball"), tag: 1)
        
        let viewController3 = PostViewController()
        viewController3.tabBarItem = UITabBarItem(title: "Post", image: UIImage(systemName: "captions.bubble"), tag: 2)
        
        let viewController4 = UserViewController()
        viewController4.tabBarItem = UITabBarItem(title: "User", image:UIImage(systemName: "person.circle" ) , tag: 3)
        
        
        viewControllers =  [viewController1,viewController2,viewController3,viewController4]
        
        selectedIndex = 0
        
    }

}
