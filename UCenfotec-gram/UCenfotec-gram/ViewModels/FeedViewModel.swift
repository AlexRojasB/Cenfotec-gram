//
//  FeedViewModel.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 10/5/21.
//

import Foundation
import UIKit
class FeedViewModel: ObservableObject{
    @Published var isLoading: Bool = false
    @Published var feeds: [FeedModel] = []
    func loadFeeds() {
        
        isLoading = true
        
        let urlString = API.getFeedList()
        
        NetworkManager<[FeedModel]>.fetch(for: urlString) {
            (result) in
            switch result {
            case .success(let response):
                DispatchQueue.main.async {
                    for feed in response {
                        self.feeds.append(feed)
                    }
                }
            case .failure(let error):
                print(error)
            }
            DispatchQueue.main.async {
                self.isLoading = false
            }
            
        }
    }
    
    func cleanToken(completion: @escaping (Bool) -> Void){
        let defaults = UserDefaults.standard
        defaults.removeObject(forKey: "Token")
        completion(false)
    }
}

