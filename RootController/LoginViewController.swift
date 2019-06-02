//
//  LoginViewController.swift
//  RootController
//
//  Created by 小島徹也 on 2018/12/06.
//  Copyright © 2018 kotalab. All rights reserved.
//

import UIKit

final class LoginViewController: UIViewController {
    private init() {
        super.init(nibName: nil, bundle: Bundle(for: type(of: self)))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    static func instantiate() -> LoginViewController {
        return LoginViewController()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func didTapLoginButton(_ sender: Any) {
        AppDelegate.shared.rootCoordinator.switchToTab()
    }
}
