//
//  RootController.swift
//  RootController
//
//  Created by 小島徹也 on 2018/12/06.
//  Copyright © 2018 kotalab. All rights reserved.
//

import UIKit

extension AppDelegate {
    static var shared: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }

    var rootViewController: RootController {
        return rootCoordinator.window.rootViewController as! RootController
    }
}

protocol RootControllerDelegate {
    func didLoad()
}

final class RootController: UIViewController {
    private init() {
        current = LoginViewController.instantiate()
//        current = SplashViewController.instantiate()
        super.init(nibName: nil, bundle: Bundle(for: type(of: self)))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    static func instantiate() -> RootController {
        let vc = RootController()
        return vc
    }

    private (set) var current: UIViewController
    var delegate: RootControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        delegate?.didLoad()
    }
}
