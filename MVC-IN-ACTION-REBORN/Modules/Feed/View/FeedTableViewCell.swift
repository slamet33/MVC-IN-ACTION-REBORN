//
//  FeedTableViewCell.swift
//  MVC-IN-ACTION-REBORN
//
//  Created by Qiarra on 12/06/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import UIKit

final class FeedTableViewCell: UITableViewCell {
    static var reuseIdentifier: String = "\(self)"
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var textL: UILabel!
    @IBOutlet weak var imageV: UIImageView!
    
}

extension FeedTableViewCell: FeedItemViewType {
    
    func display(_ item: FeedItem) {
        textL.text = item.text
        title.text = item.title
        imageV.load(item.image)
    }
}
