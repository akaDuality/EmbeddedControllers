//
//  OnboardingViewController.swift
//  DodoPizza
//
//  Created by Mikhail Rubanov on 12/12/2018.
//  Copyright © 2018 Dodo Pizza. All rights reserved.
//

import UIKit

protocol OnboardingViewControllerDatasource {
    var supportingViews: [UIView] { get }
}

class OnboardingViewController: UIViewController, Storyboardable, ViewSpecificController {
    typealias RootView = OnboardingView
    
    public func embedController(_ controller: UIViewController,
                                actionsDatasource: OnboardingViewControllerDatasource) {
        
        self.insertAsChildControllerFullscreen(controller,
                                               toView: self.view().contentContainerView,
                                               index: 0)
        self.view().supportingViews = actionsDatasource.supportingViews
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let buttonsDatasource  = segue.destination as? OnboardingViewControllerDatasource {
            self.view().supportingViews = buttonsDatasource.supportingViews
        }
    }
}
