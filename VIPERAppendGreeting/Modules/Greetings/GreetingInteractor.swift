//
//  GreetingInteractor.swift
//  VIPERAppendGreeting
//
//  Created by Michelle Grover on 5/2/23.
//

import Foundation


class GreetingInteractor {
    func generateGreeting(for name: String, completion: @escaping (Result<String, Error>) -> Void) {
        let greeting = "Hello, \(name)!"
        completion(.success(greeting))
    }
}

