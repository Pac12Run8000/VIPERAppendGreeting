//
//  ContentView.swift
//  VIPERAppendGreeting
//
//  Created by Michelle Grover on 5/2/23.
//

import SwiftUI

struct GreetingView: View {
    @State private var name = ""
    @State public var greeting = ""

    var body: some View {
        VStack {
            TextField("Name", text: $name)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Generate Greeting") {
                greeting = "Hello, \(name)!"
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(8)

            Text(greeting)
                .padding()
                .frame(width: 200, height: 50)
                .border(Color.gray, width: 1)
            
        }
    }
}

struct GreetingView_Previews: PreviewProvider {
    static var previews: some View {
        GreetingView()
    }
}
