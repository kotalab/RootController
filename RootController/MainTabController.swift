//
//  MainTabController.swift
//  RootController
//
//  Created by 小島徹也 on 2018/12/06.
//  Copyright © 2018 kotalab. All rights reserved.
//

import UIKit

final class MainTabController: UITabBarController {
    private init() {
        super.init(nibName: nil, bundle: Bundle(for: type(of: self)))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    static func instantiate() -> MainTabController {
        return MainTabController()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        viewControllers = [MainContentsViewController.instantiate(), LogoutViewController.instantiate()]
    }
}
