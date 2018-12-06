//
//  SplashViewController.swift
//  RootController
//
//  Created by 小島徹也 on 2018/12/06.
//  Copyright © 2018 kotalab. All rights reserved.
//

import UIKit

final class SplashViewController: UIViewController {
    private init() {
        super.init(nibName: nil, bundle: Bundle(for: type(of: self)))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    static func instantiate() -> SplashViewController {
        let vc = SplashViewController()
        return vc
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
