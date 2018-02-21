//
//  UIViewControllerExt.swift
//  Goal Post
//
//  Created by Vinoth Vino on 21/02/18.
//  Copyright © 2018 Coder Earth. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func presentDetail(_ viewController: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.2
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromRight
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        present(viewController, animated: false, completion: nil)
    }
    
    func dismissDetail() {
        let transition = CATransition()
        transition.duration = 0.2
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromLeft
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        dismiss(animated: false, completion: nil)
    }
}
