//
//  RootCoordinator.swift
//  RootController
//
//  Created by 小島徹也 on 2019/06/02.
//  Copyright © 2019 kotalab. All rights reserved.
//

import UIKit

final class RootCoordinator: RootControllerDelegate {
    let window: UIWindow
    let rootViewController: RootController
    private (set) var currentViewController: UIViewController?

    init() {
        window = UIWindow(frame: UIScreen.main.bounds)
        rootViewController = RootController.instantiate()
    }

    func start() {
        rootViewController.delegate = self
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }

    func didLoad() {
        switchTo(rootViewController.current)
    }

    func switchToTab() {
        switchTo(MainTabController.instantiate())
    }

    private func switchTo(_ newViewController: UIViewController) {
        rootViewController.addChild(newViewController)
        newViewController.view.frame = rootViewController.view.bounds
        rootViewController.view.addSubview(newViewController.view)
        newViewController.didMove(toParent: rootViewController)

        currentViewController?.willMove(toParent: nil)
        currentViewController?.view.removeFromSuperview()
        currentViewController?.removeFromParent()

        currentViewController = newViewController
    }
}
