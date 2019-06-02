//
//  RootController.swift
//  RootController
//
//  Created by 小島徹也 on 2018/12/06.
//  Copyright © 2018 kotalab. All rights reserved.
//

import UIKit

protocol RootControllerDelegate {
    func didLoad()
}

final class RootController: UIViewController {
    private init() {
        super.init(nibName: nil, bundle: Bundle(for: type(of: self)))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    static func instantiate() -> RootController {
        let vc = RootController()
        return vc
    }

    var delegate: RootControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        delegate?.didLoad()
    }
}
