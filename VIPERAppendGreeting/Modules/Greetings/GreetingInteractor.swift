//
//  GreetingInteractor.swift
//  VIPERAppendGreeting
//
//  Created by Michelle Grover on 5/2/23.
//

import Foundation


class GreetingInteractor {
    func generateGreeting(for name: String, completion: @escaping (Result<String, Error>) -> Void) {
        
        if name.isEmpty {
            completion(.success("Hello, (unkwown)"))
            return
        }
//        let greeting = "Hello, \(name)!"
        completion(.success("Hello, \(name)"))
    }
}

