//
//  FeedModuleConfigurator.swift
//  MVC-IN-ACTION-REBORN
//
//  Created by Qiarra on 13/06/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import UIKit

final class FeedModuleConfigurator {
    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {
        if let viewController = viewInput as? FeedViewController {
            configure(viewcontroller: viewController)
        }
    }
    
    private func configure(viewcontroller: FeedViewController) {
        let model = FeedModel()
        model.output = viewcontroller
        viewcontroller.model = model
    }
}
