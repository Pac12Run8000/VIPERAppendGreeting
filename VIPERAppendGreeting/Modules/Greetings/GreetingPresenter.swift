//
//  GreetingPresenter.swift
//  VIPERAppendGreeting
//
//  Created by Michelle Grover on 5/2/23.
//
import SwiftUI

class GreetingPresenter: ObservableObject {
    public var view: GreetingView?
    public let interactor: GreetingInteractor
    
    @Published var greeting: String = ""
    
    init(view: GreetingView?, interactor: GreetingInteractor) {
        self.view = view
        self.interactor = interactor
    }
    
    func generateGreeting(for name: String) {
        interactor.generateGreeting(for: name) { [weak self] result in
            switch result {
            case .success(let greeting):
                self?.greeting = greeting
            case .failure(let error):
                print("Error generating greeting: \(error.localizedDescription)")
            }
        }
    }
}
