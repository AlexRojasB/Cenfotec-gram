//
//  APIExtension.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 10/15/21.
//

import Foundation
extension API {    
    static func postLoginUser(user: UserModel) -> URLRequest {
        let request = NSMutableURLRequest(url: NSURL(string: "http://\(herokuHost)/login")! as URL,
                                          cachePolicy: .useProtocolCachePolicy,
                                          timeoutInterval: 10.0)
        guard let uploadData = try? JSONEncoder().encode(user) else {
            return request as URLRequest
        }
        
        request.httpBody = uploadData
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        return request as URLRequest
    }
    
    static func postSignInUser(user: UserModel) -> URLRequest {
        let request = NSMutableURLRequest(url: NSURL(string: "http://\(herokuHost)/signup")! as URL,
                                          cachePolicy: .useProtocolCachePolicy,
                                          timeoutInterval: 10.0)
        guard let uploadData = try? JSONEncoder().encode(user) else {
            return request as URLRequest
        }
        
        request.httpBody = uploadData
        
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        return request as URLRequest
    }
    
    static func getFeedList() -> URLRequest {
        
        let request = NSMutableURLRequest(url: NSURL(string: "http://\(herokuHost)/feed")! as URL,
                                          cachePolicy: .useProtocolCachePolicy,
                                          timeoutInterval: 10.0)
        let defaults = UserDefaults.standard
        let token = defaults.string(forKey: "Token")
        request.setValue(token, forHTTPHeaderField: "Token")
        request.httpMethod = "GET"
        return request as URLRequest
    }
    
    static func getOwnFeedList() -> URLRequest {
        
        let request = NSMutableURLRequest(url: NSURL(string: "http://\(herokuHost)/ownfeed")! as URL,
                                          cachePolicy: .useProtocolCachePolicy,
                                          timeoutInterval: 10.0)
        let defaults = UserDefaults.standard
        var user: UserModel?
        if let data = defaults.data(forKey: "userData") {
            do {
                // Create JSON Decoder
                //let decoder = JSONDecoder()

                // Decode Note
                user = NSKeyedUnarchiver.unarchivedObject(ofClasses: UserModel, from: data) // try decoder.decode(UserModel.self, from: data)

            } catch {
                print("Unable to Decode Notes (\(error))")
            }
        }
        
        guard let uploadData = try? JSONEncoder().encode(user) else {
            return request as URLRequest
        }
        
        request.httpBody = uploadData
        let token = defaults.string(forKey: "Token")
        request.setValue(token, forHTTPHeaderField: "Token")
        request.httpMethod = "POST"
        return request as URLRequest
    }
}
