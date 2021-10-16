//
//  ProfileViewModel.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 10/16/21.
//

import Foundation
class ProfileViewModel: ObservableObject {
    @Published var isLoading: Bool = false
    @Published var feeds: [FeedModel] = []
    @Published var user: UserModel?
   
    
    init() {
        if let data = UserDefaults.standard.data(forKey: "userData") {
            do {
                // Create JSON Decoder
                let decoder = JSONDecoder()

                // Decode Note
                self.user = try decoder.decode(UserModel.self, from: data)

            } catch {
                print("Unable to Decode Notes (\(error))")
            }
        }
    }
    func loadFeeds() {
        
        isLoading = true
        
        let urlString = API.getOwnFeedList()
        
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
}

