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
        rootViewController.addChild(rootViewController.current)
        rootViewController.current.view.frame = rootViewController.view.bounds
        rootViewController.view.addSubview(rootViewController.current.view)
        rootViewController.current.didMove(toParent: rootViewController)
    }
}
