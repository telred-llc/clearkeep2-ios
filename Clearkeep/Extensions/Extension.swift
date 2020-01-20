//
//  Extension.swift
//  Clearkeep
//
//  Created by Vu Vuong on 1/13/20.
//  Copyright © 2020 Pham Hoa. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationController {
    override open func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        navigationBar.standardAppearance = appearance
        navigationBar.compactAppearance = appearance
        navigationBar.scrollEdgeAppearance = appearance
    }
}

extension UITabBarController {
    override open func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        tabBar.standardAppearance = appearance
    }
}
