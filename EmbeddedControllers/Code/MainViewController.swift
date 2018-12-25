//
//  MainViewController.swift
//  EmbeddedControllers
//
//  Created by Mikhail Rubanov on 23/12/2018.
//  Copyright © 2018 akaDuality. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBAction func showModalControllerDidPress(_ sender: UIButton) {
        
        let contentController = NewYearContentViewController.instantiateInitialFromStoryboard()
        
        let onboardingController = OnboardingViewController.instantiateInitialFromStoryboard()
        onboardingController.embedController(contentController,
                                             actionsDatasource: contentController)
        
        let modalController = onboardingController.wrapInModalContainer()
        
        present(modalController, animated: true)
    }
}
