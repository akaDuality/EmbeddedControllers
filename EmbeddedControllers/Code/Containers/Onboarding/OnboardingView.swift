//
//  OnboardingView.swift
//  DodoPizza
//
//  Created by Mikhail Rubanov on 13/12/2018.
//  Copyright © 2018 Dodo Pizza. All rights reserved.
//

import UIKit

class OnboardingView: UIView {

    @IBOutlet weak var contentContainerView: UIView!
    @IBOutlet weak var stackView: UIStackView!
    
    var supportingViews: [UIView] = [] {
        didSet {
            supportingViews.forEach { [unowned self] (view) in
                self.stackView.addArrangedSubview(view)
            }
        }
    }
}
