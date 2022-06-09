//
//  TabBarViewController.swift
//  Spotify Clone
//
//  Created by Nazif Enes Kızılcin on 9.06.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let home = UINavigationController(rootViewController: HomeViewController())
        let search = UINavigationController(rootViewController: SearchViewController())
        let library = UINavigationController(rootViewController: LibraryViewController())
        
        
        home.tabBarItem.image = UIImage(systemName: "house")
        home.title = "Home"
        
        search.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        search.title = "Search"
        
        library.tabBarItem.image = UIImage(systemName: "music.note.list")
        library.title = "Library"
        
        tabBar.tintColor = .systemBlue
        tabBar.backgroundColor = .darkGray
        setViewControllers([home,search,library], animated: true)
        
    }
}
