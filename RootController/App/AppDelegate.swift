//
//  AppDelegate.swift
//  RootController
//
//  Created by 小島徹也 on 2018/12/06.
//  Copyright © 2018 kotalab. All rights reserved.
//

import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {
    static var shared: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }

    private (set) var rootCoordinator: RootCoordinator!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        rootCoordinator = RootCoordinator()
        rootCoordinator.start()

        return true
    }
}
