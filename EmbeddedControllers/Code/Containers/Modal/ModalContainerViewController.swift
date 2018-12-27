//
//  ModalContainerController.swift
//  DodoPizza
//
//  Created by Mikhail Rubanov on 12/12/2018.
//  Copyright © 2018 Dodo Pizza. All rights reserved.
//

import UIKit

class ModalContainerViewController: UIViewController, Storyboardable, ViewSpecificController {
    typealias RootView = ModalContainerView
    
    public func embedController(_ controller: UIViewController) {
        insertFullframeChildController(controller, index: 0)
    }

    public override var prefersStatusBarHidden: Bool {
        return true
    }
}

// MARK: - Actions
extension ModalContainerViewController {
    @IBAction private func closeDidPress(_ sender: Any) {
        dismiss(animated: true)
    }
}

extension UIViewController {
    func wrapInModalContainer() -> ModalContainerViewController {
        let modalController = ModalContainerViewController.instantiateInitialFromStoryboard()
        modalController.embedController(self)
        return modalController
    }
}
