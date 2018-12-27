//
//  NewYearContentViewController.swift
//  DodoPizza
//
//  Created by Mikhail Rubanov on 13/12/2018.
//  Copyright © 2018 Dodo Pizza. All rights reserved.
//

import UIKit

class NewYearContentViewController: UIViewController, ViewSpecificController, Storyboardable {
    typealias RootView = NewYearContentView
    
    override func loadView() {
        super.loadView()
        view.translatesAutoresizingMaskIntoConstraints = false
    }
    
    @IBAction func doneButtonDidPress(_ sender: Any) {
        dismiss(animated: true)
    }
}

extension NewYearContentViewController: OnboardingViewControllerDatasource {
    var supportingViews: [UIView] {
        return [view().doneButton]
    }
}
