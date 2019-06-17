//
//  FeedModelOutput.swift
//  MVC-IN-ACTION-REBORN
//
//  Created by Qiarra on 12/06/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import Foundation

protocol FeedModelOutput: class {
    func modelDidLoad(_ items: [FeedItem])
    func modelDidFail(_ error: Error)   
}
