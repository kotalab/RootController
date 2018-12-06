//
//  LogoutViewController.swift
//  RootController
//
//  Created by 小島徹也 on 2018/12/06.
//  Copyright © 2018 kotalab. All rights reserved.
//

import UIKit

final class LogoutViewController: UIViewController {
    private init() {
        super.init(nibName: nil, bundle: Bundle(for: type(of: self)))
        title = "Logout"
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    static func instantiate() -> LogoutViewController {
        return LogoutViewController()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapLogoutButton(_ sender: Any) {
        AppDelegate.shared.rootViewController.switchToLogin()
    }
}
