//
//  FeedTableViewDataSource.swift
//  MVC-IN-ACTION-REBORN
//
//  Created by Qiarra on 12/06/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import UIKit

final class FeedTableViewDataSource: NSObject {
    var items: [FeedItem] = []
}

extension FeedTableViewDataSource: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        let cell: FeedTableViewCell = tableView.dequeueReusableCell(withIdentifier: FeedTableViewCell.reuseIdentifier) as! FeedTableViewCell
        cell.display(item)
        return cell
    }
}
