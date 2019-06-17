//
//  FeedModel.swift
//  MVC-IN-ACTION-REBORN
//
//  Created by Qiarra on 12/06/19.
//  Copyright © 2019 Slamet Riyadi. All rights reserved.
//

import Foundation

enum FeedModelError: Error {
    case noResourceFile(String)
}

final class FeedModel: FeedModelInput {
    
    weak var output: FeedModelOutput!
    func load() {
        DispatchQueue.main.asyncAfter(deadline: .now()) {[weak self] in
            let fileName = "Feed"
            guard let path = Bundle.main.path(forResource: fileName, ofType: "json") else {
                self?.output.modelDidFail(FeedModelError.noResourceFile(fileName))
                return
            }
            let url = URL(fileURLWithPath: path)
            do {
                let data = try Data(contentsOf: url)
                let items = try JSONDecoder().decode([FeedItem].self, from: data)
                self?.output.modelDidLoad(items)
            } catch {
                self?.output.modelDidFail(error)
            }
        }
    }
}

extension FeedModelError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .noResourceFile(let name):
            return "Resource \(name) file not exist"
        }
    }
}
