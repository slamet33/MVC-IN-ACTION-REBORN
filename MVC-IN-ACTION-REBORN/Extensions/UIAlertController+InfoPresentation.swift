//
//  UIAlertController+InfoPresentation.swift
//  MVC-IN-ACTION-REBORN
//
//  Created by Qiarra on 13/06/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import UIKit

extension UIAlertController {
    static func show(_ vc: UIViewController, error: Error?) {
        let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        vc.present(alert, animated: true, completion: nil)
    }
}
