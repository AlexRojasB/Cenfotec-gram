//
//  NetworkManager.swift
//  UCenfotec-gram
//
//  Created by Alexander Rojas Benavides on 10/15/21.
//

import Foundation
final class NetworkManager<T: Codable> {
    static func fetch(for url: URLRequest, completion: @escaping(Result<T, NetworkError>) -> Void) {
     
        URLSession.shared.dataTask(with: url) {
            (data, response, error) in
            guard error == nil else {
                print(String(describing: error))
                completion(.failure(.error(err: error!.localizedDescription)))
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                completion(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completion(.failure(.invalidData))
                return
            }
            
            do {
                let json = try JSONDecoder().decode(T.self, from: data)
                completion(.success(json))
            } catch let err {
                print(String(describing: err))
                completion(.failure(.decodingError(err: err.localizedDescription)))
            }
        }.resume()
    }
    
    static func post(for url: URLRequest, completion: @escaping(Result<T, NetworkError>) -> Void) {
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            let defaults = UserDefaults.standard
            if let httpResponse = response as? HTTPURLResponse {
                 if let token = httpResponse.allHeaderFields["Token"] as? String {
                     defaults.set(token, forKey: "Token")
                 }
            }
            if let error = error {
                print ("error: \(error)")
                return
            }
            guard let response = response as? HTTPURLResponse,
                (200...299).contains(response.statusCode) else {
                print ("server error")
                return
            }
            if let mimeType = response.mimeType,
                mimeType == "application/json",
                let data = data {
                do {
                    let json = try JSONDecoder().decode(T.self, from: data)
                    let encodedData = try? NSKeyedArchiver.unarchivedData(withRootObject: data, requiringSecureCoding: true)
                    defaults.set(encodedData, forKey: "userData");
                    completion(.success(json))
                } catch let err {
                    print(String(describing: err))
                    completion(.failure(.decodingError(err: err.localizedDescription)))
                }
            }
        }
        task.resume()
    }
}



enum NetworkError:Error {
    case invalidResponse
    case invalidData
    case error(err: String)
    case decodingError(err: String)
}
