//
//  VIPERAppendGreetingApp.swift
//  VIPERAppendGreeting
//
//  Created by Michelle Grover on 5/2/23.
//

import SwiftUI

@main
struct VIPERAppendGreetingApp: App {
    var body: some Scene {
        WindowGroup {
            let interactor = GreetingInteractor()
            let presenter = GreetingPresenter(view: nil, interactor: interactor)
            GreetingView(presenter: presenter)}
    }
}
