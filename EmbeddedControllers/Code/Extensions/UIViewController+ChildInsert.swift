//
//  UIViewController+ChildInsert.swift
//  EmbeddedControllers
//
//  Created by Mikhail Rubanov on 23/12/2018.
//  Copyright © 2018 akaDuality. All rights reserved.
//

import UIKit

extension UIViewController {
    func insertFullframeChildController(_ childController: UIViewController,
                                        toView: UIView? = nil, index: Int) {
        
        let containerView: UIView = toView ?? view
        
        addChild(childController)
        containerView.insertSubview(childController.view, at: index)
        containerView.pinToBounds(childController.view)
        childController.didMove(toParent: self)
    }
}
