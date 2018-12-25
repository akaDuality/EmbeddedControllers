//
//  ViewSpecificController.swift
//  DodoPizza
//
//  Created by Mikhail Rubanov on 03/10/2018.
//  Copyright © 2018 Dodo Pizza. All rights reserved.
//

import UIKit

protocol ViewSpecificController {
    associatedtype RootView: UIView
}

extension ViewSpecificController where Self: UIViewController {
    func view() -> RootView {
        return self.view as! RootView
    }
}
