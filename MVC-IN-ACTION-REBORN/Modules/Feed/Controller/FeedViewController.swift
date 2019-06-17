//
//  ViewController.swift
//  MVC-IN-ACTION-REBORN
//
//  Created by Qiarra on 12/06/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import UIKit

final class FeedViewController: UIViewController {
    
    var model: FeedModelInput!
    lazy var contentView: FeedViewInput = { return view as! FeedViewInput} ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        contentView.dataSource = FeedTableViewDataSource()
        contentView.itemAction = {[unowned self] item in
            self.performSegue(withIdentifier: "showDetails", sender: item)
        }
        contentView.activity(true)
        model.load()
    }
}

extension FeedViewController: FeedModelOutput{
    func modelDidLoad(_ items: [FeedItem]) {
        contentView.activity(false)
        contentView.display(items)
        
    }
    
    func modelDidFail(_ error: Error) {
        contentView.activity(false)
    }
}

