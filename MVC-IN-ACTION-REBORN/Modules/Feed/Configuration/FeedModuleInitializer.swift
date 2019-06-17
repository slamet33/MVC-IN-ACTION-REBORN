//
//  FeedModuleInitializer.swift
//  MVC-IN-ACTION-REBORN
//
//  Created by Qiarra on 13/06/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import UIKit

final class FeedModuleInitializer: NSObject {
    
    @IBOutlet weak var viewController: FeedViewController!
    
    override func awakeFromNib() {
        let configurator = FeedModuleConfigurator()
         configurator.configureModuleForViewInput(viewInput: viewController)
        
    }
}
