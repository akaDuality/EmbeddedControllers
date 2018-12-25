//
//  UIViewController.swift
//  travelus
//
//  Created by Mikhail Rubanov on 02.06.2018.
//  Copyright © 2018 Art. Lebedev. All rights reserved.
//

import UIKit

protocol Storyboardable {
    
}

extension Storyboardable where Self: UIViewController {
    static func instantiateInitialFromStoryboard() -> Self {
        let controller = storyboard().instantiateInitialViewController()
        return controller! as! Self
    }
    
    static func storyboard(fileName: String? = nil) -> UIStoryboard {
        let storyboard = UIStoryboard(name: fileName ?? storyboardIdentifier, bundle: nil)
        return storyboard
    }
    
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
    
    static var storyboardName: String {
        return self.storyboardIdentifier
    }
}
