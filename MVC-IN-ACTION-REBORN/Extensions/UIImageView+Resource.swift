//
//  File.swift
//  MVC-IN-ACTION-REBORN
//
//  Created by Qiarra on 12/06/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import UIKit

extension UIImageView {
    func load(_ resource: String?) {
        resource.flatMap {
            URL(string: $0).flatMap { url in
                DispatchQueue(label: "image.loading").sync {
                    [weak self] in guard let data = try? Data(contentsOf: url) else {
                        return
                    }
                    DispatchQueue.main.async {
                        self?.image = UIImage(data: data)
                    }
                }
            }
        }
    }
}
